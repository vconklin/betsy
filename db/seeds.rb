product_list = [
  { name: "Beyonce's tears (from writing Lemonade)", price: rand(1000..99999), user_id: rand(1..3), stock: 0, category: "beyonce", description: "", status: "Active"},
  { name: "Air Beyonce breathed", price: rand(1000..99999), user_id: rand(1..3), stock: 1, category: "beyonce", description:"", status: "Active"},
  { name: "Bee Shack", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Bee Cool", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "", description: "", status: "Active"},
  { name: "Detachable Stingers", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Beyonce Heat", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Becoming Beyonce Book", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Lemonade Drink", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Beyonce Blow Up Doll", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Beach Wave Extensions", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Bey-Hive", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Bee-Venom", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Royal-Jelly", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Retired"},
  { name: "Bey-Hive Stinger", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Almost-A-Bee Stuffed Wasp Plush", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Honey Stick Pixy Stix", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Actual Bee Larva", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Awkwardly Sexualized Bee Costume", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Honey Comb Comb", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "Burt’s Beeyonce Lip Balm", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "bee", description: "", status: "Active"},
  { name: "TEETH LIKE BEYONCE! Toothpaste", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Beyonce Barbie", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "Every Beyonce Album Ever, Signed By Beyonce, Twice", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Active"},
  { name: "HUGE Beyonce Bumper Sticker", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), category: "beyonce", description: "", status: "Retired"},
]

product_list.each do |product|
  Product.create(product)
end
