products = [
  {name: "Beyonce's tears", description: "From writing Lemonade", price: 900000, user_id: 1, stock: 1, category: "Beyonce"},
  {name: "Almost-A-Bee Stuffed Wasp Plush", price: 800, user_id: 2, stock: 23, category: "Bees"}
]

products.each do |product|
  Product.create(product)
end