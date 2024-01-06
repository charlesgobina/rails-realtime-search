# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  print('success')
  Find.create(user_id: User.first.id, query: Faker::Book.title)
end

# 5.times do
#   User.create(username: Faker::Name.name, ip_address: Faker::Internet.ip_v4_address)
# end
