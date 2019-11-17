# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seed: Deleting existing records...'

# Instances to be added later

# Review.delete_all
# Booking.delete_all
# Boat.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create!(
  email: "malcolm@gmail.com",
  first_name: "Malcolm",
  last_name: "The Rich",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "janlosthisphone@yahoo.com",
  first_name: "Jan",
  last_name: "Losthisphone",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  email: "hien.was.eaten.by.flora@gmail.com",
  first_name: "Hien",
  last_name: "Flora",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  email: "porschefan4@gmail.com",
  first_name: "Porsche4",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)

user5 = User.create!(
  email: "porschefan5@gmail.com",
  first_name: "Porsche5",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user6 = User.create!(
  email: "porschefan6@gmail.com",
  first_name: "Porsche6",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user7 = User.create!(
  email: "porschefan7@gmail.com",
  first_name: "Porsche7",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user8 = User.create!(
  email: "porschefan8@gmail.com",
  first_name: "Porsche8",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user9 = User.create!(
  email: "porschefan9@gmail.com",
  first_name: "Porsche9",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user10 = User.create!(
  email: "porschefan11@gmail.com",
  first_name: "Porsche11",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)

puts 'Seed: Finished seeding!'

