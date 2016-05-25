require 'httparty'

module ShippingWrapper
  BASE_URL = "http://localhost:3001/"

  def self.response(products, place, origin)
    data = HTTParty.post(BASE_URL+"products/", {:body => { :products_specs => products, :destination => place, :origin => origin }}.to_json).parsed_response
  end

end
