product_list = [
  { name: "Beyonce's tears", price: rand(1000..99999), user_id: rand(1..3), stock: 0, description: " ", status: "active" , image: "beyonces-tears.png"},
  { name: "Air Beyonce breathed", price: rand(1000..99999), user_id: rand(1..3), stock: 1, description:" ", status: "active", image: "airbeyonce.JPG"},
  { name: "Bee Shack", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beeshack.jpg"},
  { name: "Bee Cool", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beecool.jpg"},
  { name: "Detachable Stingers", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", image: "stinger.jpg", status: "active"},
  { name: "Beyonce Heat", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-heat.jpg"},
  { name: "Becoming Beyonce Book", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "becoming-beyonce.jpg"},
  { name: "Lemonade Drink", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "lemonade.jpg"},
  { name: "Beyonce Blow Up Doll", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active"},
  { name: "Beach Wave Extensions", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beachwave-extension.jpg"},
  { name: "Bey-Hive", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bey-hive.jpg"},
  { name: "Bee-Venom", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beevenom.jpg"},
  { name: "Royal-Jelly", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "retired", image: "royal-jelly.jpg"},
  { name: "Bey-Hive Stinger", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bey-hive.jpg"},
  { name: "Almost-A-Bee Stuffed Wasp", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "wasp-plush.jpg"},
  { name: "Honey Stick Pixy Stix", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "pixy-stix.jpg"},
  { name: "Actual Bee Larva", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "larvae.jpg"},
  { name: "Awkwardly Sexy Bee Costume", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "bee-costume.jpg"},
  { name: "Honey Comb Comb", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "honeycomb-comb.jpg"},
  { name: "Burt’s Beeyonce Lip Balm", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "lipbalm.jpg"},
  { name: "Beyonce-flavored Toothpaste", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", image: "toothpaste.jpg", status: "active"},
  { name: "Beyonce Barbie", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-barbie.jpg"},
  { name: "Every Beyonce Album Ever, Signed By Beyonce, Twice", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "active", image: "beyonce-albums.jpg"},
  { name: "HUGE Beyonce Bumper Sticker", price: rand(1000..99999), user_id: rand(1..3), stock: rand(1..10), description: " ", status: "retired", image: "beyonce-sticker.jpg"},
]

product_list.each do |product|
  Product.create(product)
end

user_list = [
  { username: "beeseller1980", email: "n@com", password: "a"},
  { username: "iamamerchant", email: "r@com", password: "a"},
  { username: "merchantme", email: "p@com", password: "a"}
]

user_list.each do |user|
  User.create(user)
end

category_list = [
  {name: "bees"},
  {name: "Beyonce"},
  {name: "edibles"},
  {name: "collectibles"},
  {name: "novelty"},
  {name: "electronics"},
  {name: "health and beauty"},
  {name: "house and garden"},
  {name: "music"},
  {name: "books"}
]

category_list.each do |category|
  Category.create(category)
end

Product.find(1).categories << Category.find([2,4])
Product.find(2).categories << Category.find([2,4])
Product.find(3).categories << Category.find([1,8])
Product.find(4).categories << Category.find([1,3])
Product.find(5).categories << Category.find([1,5])
Product.find(6).categories << Category.find([2,7])
Product.find(7).categories << Category.find([2,10])
Product.find(8).categories << Category.find([2,3])
Product.find(9).categories << Category.find(2)
Product.find(10).categories << Category.find([2,7])
Product.find(11).categories << Category.find(2)
Product.find(12).categories << Category.find(1)
Product.find(13).categories << Category.find(1)
Product.find(14).categories << Category.find(2)
Product.find(15).categories << Category.find([1,5])
Product.find(16).categories << Category.find([1,3])
Product.find(17).categories << Category.find([1,8])
Product.find(18).categories << Category.find([1,5])
Product.find(19).categories << Category.find([1,7])
Product.find(20).categories << Category.find([1,7])
Product.find(21).categories << Category.find([2,7])
Product.find(22).categories << Category.find([2,5])
Product.find(23).categories << Category.find([2,9,4])
Product.find(24).categories << Category.find([2,5])
