product_list = [
  { name: "Beyonce's tears", price: rand(1000..99999), user_id: rand(1..3), stock: 0, description: " ", status: "active" , image: "beyonces-tears.png"},
  { name: "Air Beyonce breathed", price: rand(1000..99999), user_id: rand(1..3), stock: 1, description:" ", status: "active", image: "airbeyonce.JPG"},
  { name: "Bee Shack", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beeshack.jpg"},
  { name: "Bee Cool", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beecool.jpeg"},
  { name: "Detachable Stingers", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", image: "stinger.jpg", status: "active"},
  { name: "Beyonce Heat", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-heat.jpeg"},
  { name: "Becoming Beyonce Book", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "becoming-beyonce.jpg"},
  { name: "Lemonade Drink", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "lemonade.jpeg"},
  { name: "Beyonce Blow Up Doll", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active"},
  { name: "Beach Wave Extensions", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beachwave-extension.jpeg"},
  { name: "Bey-Hive", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bey-hive.jpg"},
  { name: "Bee-Venom", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beevenom.jpeg"},
  { name: "Royal-Jelly", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "retired", image: "royal-jelly.jpeg"},
  { name: "Bey-Hive Stinger", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bey-hive.jpg"},
  { name: "Almost-A-Bee Stuffed Wasp", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "wasp-plush.jpeg"},
  { name: "Honey Stick Pixy Stix", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "pixy-stix.jpg"},
  { name: "Actual Bee Larva", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "larvae.jpg"},
  { name: "Awkwardly Sexy Bee Costume", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bee-costume.jpg"},
  { name: "Honey Comb Comb", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "honeycomb-comb.jpeg"},
  { name: "Burt’s Beeyonce Lip Balm", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "lipbalm.jpg"},
  { name: "Beyonce-flavored Toothpaste", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", image: "toothpaste.jpg", status: "active"},
  { name: "Beyonce Barbie", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-barbie.jpg"},
  { name: "Every Beyonce Album Ever, Signed By Beyonce, Twice", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-albums.jpg"},
  { name: "HUGE Beyonce Bumper Sticker", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "retired", image: "beyonce-sticker.jpg"},
]

product_list.each do |product|
  Product.create(product)
end
