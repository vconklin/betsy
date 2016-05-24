class ProductsController < ApplicationController
skip_before_action :require_login, except: [:index]

  def index
    if params[:category_id]
      @products = Category.find(params[:category_id]).products
    else
      @products = Product.where(status: "active")
    end
    @user ||= User.find_by(id: session[:user_id])
    @categories = Category.all.order(:name).map{|c| [ c.name, c.id ] }
  end

  def new
    # give them a shell and invite them to fill out the data.  Allows introspection into the object in the view!
    @product = Product.new
    @categories = Category.all.order(:name).map{|c| [ c.name, c.id ] }

  end

  def create
    @product = Product.new(product_access_params[:product])
    #any validation?
    if @product.save
      redirect_to "/users/#{current_user.id}/products"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    if @product.reviews.present?
      @overall_rating = @product.reviews.average(:rating).truncate(2).to_s
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.order(:name).map{|category| [category.name, category.id]}
  end

  def update
    # @product = Product.update(params[:id], product_access_params[:product])
    @product = Product.find(params[:id])
    @product.update_categories(params[:product][:categories])
    @user ||= User.find_by(id: session[:user_id])

    if @product.update(product_access_params[:product])
      redirect_to "/users/#{@user.id}/products"
    else
      @categories = Category.all.order(:name).map{|category| [category.name, category.id]}
      render :edit
    end
  end

  def by_category
    @products = Product.where(category: params[:category], status: "active")
    redirect_to root_path
  end

  private

  def product_access_params
    params.permit(product: [:name, :description, :stock, :price, :status, :image, :user_id])
  end

end
