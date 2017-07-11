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

admin_list = [
  [ "admin@admin.com", "password"],
]

admin_list.each do |email, password|
  User.create( email: email, password: password, admin: true )
end


8.times do |index|
  new_product = Product.create!(name: Faker::Superhero.name,
                        price: Faker::Commerce.price,
                        image: Faker::LoremPixel.image("50x60", true),
                        description: Faker::Friends.quote)

end

p "Created #{Product.count} products"
p "Created #{User.count} admin"
