# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# file = URI.open('https://meme.eq8.eu/noidea.jpg')
# lama = Lama.new(title: 'NES', body: "A great console")
# lama.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# # Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
# article.save


puts 'Seed: Deleting existing records...'

# Instances to be added later

# Review.delete_all
Booking.delete_all
Lama.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create!(
  email: "malcolm@gmail.com",
  username: "Test1",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "janlosthisphone@yahoo.com",
  username: "Test2",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  email: "hien.was.eaten.by.flora@gmail.com",
  username: "Test3",
  password: "123456",
  password_confirmation: "123456"
)


# -------------------------------------

lama1 = Lama.create!(
  title: "Serge Lama",
  description: "A truly vocal and harmonic lama. ",
  price: 4000.00,
  address: "16 villa gaudelet, Paris",
  is_available: true,
  capacity: 3,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user: user2
)

lama2 = Lama.create!(
  title: "Dalaï Lama",
  description: "The spiritual lama. ",
  price: 1000.00,
  address: "香格里拉市",
  is_available: true,
  capacity: 2,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user: user1
)

lama3 = Lama.create!(
  title: "Lama Del Rey",
  description: "Summertime lamaness. ",
  price: 1000.00,
  address: "San Francisco, California",
  is_available: true,
  capacity: 1,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user: user3
)

puts 'Seed: Finished seeding!'

