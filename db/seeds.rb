# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
Order.destroy_all


spices = [
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2013/03/allspice1-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/01/allspice-whole-600x600.jpeg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/01/green-cardamom-pod-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2013/03/whole-cloves-600x600.jpeg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/06/anise-seed-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/02/saffron-1-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2013/03/thyme1-600x455.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2013/10/star-anise-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/01/fenugreek-seed-600x600.jpg",
  "https://1942fk312n023k7s8l39emez-wpengine.netdna-ssl.com/wp-content/uploads/2014/10/chile-pequin-600x600.jpeg"
]


admin_list = [
  [ "admin@admin.com", "password"],
]

admin_list.each do |email, password|
  User.create( email: email, password: password, admin: true )
end


30.times do |index|
  new_product = Product.create!(name: Faker::Food.spice,
                        price: Faker::Commerce.price,
                        image: spices.sample,
                        description: Faker::Hipster.sentences.join(' '))

end

p "Created #{Product.count} products"
p "Created #{User.count} admin"
