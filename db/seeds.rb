product_list = [
  { name: "Beyonce's tears (from writing Lemonade)", price: rand(1000..99999), user_id: rand(1..3), stock: 0, category: "beyonce", description: " ", status: "active"},
  { name: "Air Beyonce breathed", price: rand(1000..99999), user_id: rand(1..3), stock: 1, category: "beyonce", description:" ", status: "active"},
  { name: "Bee Shack", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Bee Cool", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "", description: " ", status: "active"},
  { name: "Detachable Stingers", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Beyonce Heat", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Becoming Beyonce Book", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Lemonade Drink", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Beyonce Blow Up Doll", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Beach Wave Extensions", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Bey-Hive", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Bee-Venom", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Royal-Jelly", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "retired"},
  { name: "Bey-Hive Stinger", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Almost-A-Bee Stuffed Wasp Plush", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Honey Stick Pixy Stix", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Actual Bee Larva", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Awkwardly Sexualized Bee Costume", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Honey Comb Comb", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "Burt’s Beeyonce Lip Balm", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: " ", status: "active"},
  { name: "TEETH LIKE BEYONCE! Toothpaste", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Beyonce Barbie", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "Every Beyonce Album Ever, Signed By Beyonce, Twice", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "active"},
  { name: "HUGE Beyonce Bumper Sticker", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: " ", status: "retired"},
]

product_list.each do |product|
  Product.create(product)
end
