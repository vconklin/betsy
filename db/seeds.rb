product_list = [
  { name: "Beyonce's tears (from writing Lemonade)", price: rand(1000..99999), user_id: rand(1..3), stock: 0, category: "beyonce", description: ""},
  { name: "Air Beyonce breathed", price: rand(1000..99999), user_id: rand(1..3), stock: 1, category: "beyonce", description:""},
  { name: "Bee Shack", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Bee Cool", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "", description: ""},
  { name: "Detachable Stingers", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Beyonce Heat", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Becoming Beyonce Book", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Lemonade Drink", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Beyonce Blow Up Doll", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Beach Wave Extensions", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Bey-Hive", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Bee-Venom", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Royal-Jelly", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Bey-Hive Stinger", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Almost-A-Bee Stuffed Wasp Plush", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Honey Stick Pixy Stix", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Actual Bee Larva", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Awkwardly Sexualized Bee Costume", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Honey Comb Comb", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "Burt’s Beeyonce Lip Balm", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: ""},
  { name: "TEETH LIKE BEYONCE! Toothpaste", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Beyonce Barbie", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "Every Beyonce Album Ever, Signed By Beyonce, Twice", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
  { name: "HUGE Beyonce Bumper Sticker", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: ""},
]

product_list.each do |product|
  Product.create(product)
end
