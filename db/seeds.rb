# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# santo, create admin user
unless User.exists?(email: "santo@santo.com")
  User.create!(email: "santo@santo.com", password: "asdfasdf", admin: true)
end

# santo. create user
unless User.exists?(email: "hectorgool@gmail.com")
  User.create!(email: "hectorgool@gmail.com", password: "asdfasdf")
end
