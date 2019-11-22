# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# file = URI.open('https://meme.eq8.eu/noidea.jpg')
# lama = Lama.new(title: 'NES', body: "A great console")
# lama.photos.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# # Here we write article.photos.attach(...) because we wrote has_one_attached :photo in app/models article.rb
# article.save


puts 'Seed: Deleting existing records...'

# Instances to be added later

# Review.delete_all
Booking.delete_all
Lama.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.new(
  email: "malcolm@gmail.com",
  username: "Test1",
  password: "123456",
  password_confirmation: "123456"
)
user1.save
puts 'user1 created!'

user2 = User.new(
  email: "janlosthisphone@yahoo.com",
  username: "Test2",
  password: "123456",
  password_confirmation: "123456"
)
user2.save
puts 'user2 created!'

user3 = User.new(
  email: "hien.was.eaten.by.flora@gmail.com",
  username: "Test3",
  password: "123456",
  password_confirmation: "123456"
)
user3.save
puts 'user3 created!'

# -------------------------------------

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424583/shallow-focus-photography-of-brown-llama-1300358_qmjqy5.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424584/shallow-focus-photography-of-brown-llama-1300364_witstd.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574249350/CEeSQyzP4mLgoLf6KY2vMF6D.jpg')
lama1 = Lama.new(
  title: "Serge Lama",
  description: "A truly vocal and harmonic lama. Can sing in French.",
  price: 4000.00,
  address: "16 villa gaudelet, Paris",
  is_available: true,
  capacity: 3,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user_id: 11
)
lama1.photos.attach(io: file1, filename: 'shallow-focus-photography-of-brown-llama-1300358_qmjqy5.jpg', content_type: 'image/jpg')
lama1.photos.attach(io: file2, filename: 'shallow-focus-photography-of-brown-llama-1300364_witstd.jpg', content_type: 'image/jpg')
lama1.photos.attach(io: file3, filename: 'CEeSQyzP4mLgoLf6KY2vMF6D.jpg', content_type: 'image/jpg')
lama1.save
puts 'lama1 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574260637/tgsLijr9puCwpDmzjSi6im7P.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574260638/Fbe7Kn3ssUKoSzhEASjwo9AA.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574260639/8GeGvzEL2orGHTSmgWXDbRCe.jpg')
lama2 = Lama.new(
  title: "Dalaï Lama",
  description: "The spiritual lama. ",
  price: 1000.00,
  address: "香格里拉市",
  is_available: true,
  capacity: 2,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user_id: 10
)
lama2.photos.attach(io: file1, filename: 'tgsLijr9puCwpDmzjSi6im7P.jpg', content_type: 'image/jpg')
lama2.photos.attach(io: file2, filename: 'Fbe7Kn3ssUKoSzhEASjwo9AA.jpg', content_type: 'image/jpg')
lama2.photos.attach(io: file3, filename: '8GeGvzEL2orGHTSmgWXDbRCe.jpg', content_type: 'image/jpg')
lama2.save
puts 'lama2 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574422454/65EotM4U1kdZmUWdH4zt87uL.png')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574422858/VziPoRGrhdkuiKedCezDErJC.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574422896/LD86G7LdZCFuUoyGKar5YVgD.jpg')
lama3 = Lama.new(
  title: "Lama Del Rey",
  description: "Summertime lamaness. ",
  price: 1000.00,
  address: "San Francisco, California",
  is_available: true,
  capacity: 1,
  driver: true,
  created_at: "2019-11-17 [11:22:33]",
  updated_at: "2019-11-18 [11:45:33]",
  user_id: 12
)
lama3.photos.attach(io: file1, filename: '65EotM4U1kdZmUWdH4zt87uL.png', content_type: 'image/png')
lama3.photos.attach(io: file2, filename: 'VziPoRGrhdkuiKedCezDErJC.jpg', content_type: 'image/jpg')
lama3.photos.attach(io: file3, filename: 'LD86G7LdZCFuUoyGKar5YVgD.jpg', content_type: 'image/jpg')
lama3.save
puts 'lama3 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574250755/7gTBjFs27aLCTaHTyqbm9aW2.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574257968/YzAbTuzPZ31dMNHdA3sR2Vuh.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574257971/QgArB33KAqimUZkA9MPJmpyT.jpg')
lama4 = Lama.new(
  title: "Baracko Lama",
  description: "A leader Lama! He is the perfect fit for your meetings, Barack Obama himself asked after our Lama.",
  price: 1000.00,
  address: "Washington DC, Washington",
  is_available: true,
  capacity: 3,
  driver: nil,
  created_at: "2019-11-20 [13:52:52]",
  updated_at: "2019-11-20 [13:52:52]",
  user_id: 12
)
lama4.photos.attach(io: file1, filename: '7gTBjFs27aLCTaHTyqbm9aW2.jpg', content_type: 'image/jpg')
lama4.photos.attach(io: file2, filename: 'YzAbTuzPZ31dMNHdA3sR2Vuh.jpg', content_type: 'image/jpg')
lama4.photos.attach(io: file3, filename: 'QgArB33KAqimUZkA9MPJmpyT.jpg', content_type: 'image/jpg')
lama4.save
puts 'lama4 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574258029/TgnLg9ouVTXCwQo3L8CKwoAT.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574422954/bixxZgG9aRfStLJinqWa8VhU.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574249350/CEeSQyzP4mLgoLf6KY2vMF6D.jpg')
lama5 = Lama.new(
  title: "Bernard Lama",
  description: "Named after the famous goalkeeper of the Paris-Saint-Germain. Bernard is very friendly and loves to play at the French football!",
  price: 6000.00,
  address: "14 rue Crespin du Gast, Paris",
  is_available: true,
  capacity: 2,
  driver: true,
  created_at: "2019-11-20 [13:53:51]",
  updated_at: "2019-11-20 [13:53:51]",
  user_id: 11
)
lama5.photos.attach(io: file1, filename: 'some-image.jpg', content_type: 'image/jpg')
lama5.photos.attach(io: file2, filename: 'some-image.jpg', content_type: 'image/jpg')
lama5.photos.attach(io: file3, filename: 'some-image.jpg', content_type: 'image/jpg')
lama5.save
puts 'lama5 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424495/grayscale-photo-of-llama-1422605_sprybt.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424395/photo-of-a-llama-1578484_eqlmj2.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424395/animals-blur-close-up-domestic-133387_ot4b4z.jpg')
lama6 = Lama.new(
  title: "Lamartine",
  description: "Lamartine is kid-friendly, always in good mood and ready to play games. She is the perfect fit for Birthday parties. Glittery pink hair in option.",
  price: 1500.00,
  address: "Madrid",
  is_available: true,
  capacity: 2,
  driver: true,
  created_at: "2019-11-20 [13:57:27]",
  updated_at: "2019-11-20 [13:57:27]",
  user_id: 11
)
lama6.photos.attach(io: file1, filename: 'grayscale-photo-of-llama-1422605_sprybt.jpg', content_type: 'image/jpg')
lama6.photos.attach(io: file2, filename: 'photo-of-a-llama-1578484_eqlmj2.jpg', content_type: 'image/jpg')
lama6.photos.attach(io: file3, filename: 'animals-blur-close-up-domestic-133387_ot4b4z.jpg', content_type: 'image/jpg')
lama6.save
puts 'lama6 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574422636/xFzwSGx66SS6Qz7ovGUBf1zq.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574419030/TkRP4Y3TQAsJo71xHAuj18pd.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574258793/KjfSf7wFbvhv3sEWwtMmYSva.jpg')
lama7 = Lama.new(
  title: "Oh-la-la Lama",
  description: "A resilient lama, can cope with any situation and get away with it. The best choice you can make !",
  price: 5321.00,
  address: "Bengaluru",
  is_available: true,
  capacity: 2,
  driver: nil,
  created_at: "2019-11-20 [14:06:34]",
  updated_at: "2019-11-20 [14:06:34]",
  user_id: 10
)
lama7.photos.attach(io: file1, filename: 'xFzwSGx66SS6Qz7ovGUBf1zq.jpg', content_type: 'image/jpg')
lama7.photos.attach(io: file2, filename: 'TkRP4Y3TQAsJo71xHAuj18pd.jpg', content_type: 'image/jpg')
lama7.photos.attach(io: file3, filename: 'KjfSf7wFbvhv3sEWwtMmYSva.jpg', content_type: 'image/jpg')
lama7.save
puts 'lama7 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574431564/animal-zoo-chill-lama-96894_lgteit.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574260637/tgsLijr9puCwpDmzjSi6im7P.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574260112/j9edv8VZqV4qdKobmn44at9J.jpg')
lama8 = Lama.new(
  title: "ラマ",
  description: "酒草を食べるニポンラマ",
  price: 5673.00,
  address: "Tokyo",
  is_available: true,
  capacity: 1,
  driver: true,
  created_at: "2019-11-20 [14:17:47]",
  updated_at: "2019-11-20 [14:17:47]",
  user_id: 10
)
lama8.photos.attach(io: file1, filename: 'animal-zoo-chill-lama-96894_lgteit.jpg', content_type: 'image/jpg')
lama8.photos.attach(io: file2, filename: 'some-image.jpg', content_type: 'image/jpg')
lama8.photos.attach(io: file3, filename: 'SwVsMm1251yjKWyRwpKZyNUv.jpg', content_type: 'image/jpg')
lama8.save
puts 'lama8 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574337083/KStDYros9RW1DpyFHMjZ7Gf2.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574264578/KQWgTeZW4Tdz5m68cyZcSSPe.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574263827/photo-1511885663737-eea53f6d6187_1_uiz6qk.jpg')
lama9 = Lama.new(
  title: "Lama Carena",
  description: "A dancing Lama, for all your parties so enjoyable and fun!",
  price: 3800.00,
  address: "Caracas",
  is_available: true,
  capacity: 2,
  driver: true,
  created_at: "2019-11-20 [14:28:36]",
  updated_at: "2019-11-20 [14:28:36]",
  user_id: 12
)
lama9.photos.attach(io: file1, filename: 'KStDYros9RW1DpyFHMjZ7Gf2.jpg', content_type: 'image/jpg')
lama9.photos.attach(io: file2, filename: 'KQWgTeZW4Tdz5m68cyZcSSPe.jpg', content_type: 'image/jpg')
lama9.photos.attach(io: file3, filename: 'photo-1511885663737-eea53f6d6187_1_uiz6qk.jpg', content_type: 'image/jpg')
lama9.save
puts 'lama9 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574431135/shallow-focus-photography-of-brown-and-black-animal-594399_agohtg.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574258790/2zSjsx39eTisRzHxVJX2GwnR.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574259299/17z6fRwMn95oWoivP9wBQimS.jpg')
lama10 = Lama.new(
  title: "Biernard Lama",
  description: "A lama that drinks a lot, can serve beers and manage the draught-beer system 🍺",
  price: 350.00,
  address: "Washington DC, Washington",
  is_available: true,
  capacity: 2,
  driver: nil,
  created_at: "2019-11-20 [15:41:36]",
  updated_at: "2019-11-20 [15:41:36]",
  user_id: 12
)
lama10.photos.attach(io: file1, filename: 'shallow-focus-photography-of-brown-and-black-animal-594399_agohtg.jpg', content_type: 'image/jpg')
lama10.photos.attach(io: file2, filename: '2zSjsx39eTisRzHxVJX2GwnR.jpg', content_type: 'image/jpg')
lama10.photos.attach(io: file3, filename: '17z6fRwMn95oWoivP9wBQimS.jpg', content_type: 'image/jpg')
lama10.save
puts 'lama10 created!'

file1 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424913/animal-animal-photography-animal-world-blur-277218_mxrrar.jpg')
file2 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574424954/white-and-brown-llama-2253639_kcxup2.jpg')
file3 = URI.open('https://res.cloudinary.com/dq24zunln/image/upload/v1574425013/shallow-focus-photography-of-llama-1201426_b9gxv4.jpg')
lama11 = Lama.new(
  title: "Lama Scarade",
  description: "It's a trap! She loves to play hide-and-seek.",
  price: 400.00,
  address: "Washington DC, Washington",
  is_available: true,
  capacity: 2,
  driver: nil,
  created_at: "2019-11-20 [15:42:59]",
  updated_at: "2019-11-20 [15:42:59]",
  user_id: 12
)
lama11.photos.attach(io: file1, filename: 'animal-animal-photography-animal-world-blur-277218_mxrrar.jpg', content_type: 'image/jpg')
lama11.photos.attach(io: file2, filename: 'white-and-brown-llama-2253639_kcxup2.jpg', content_type: 'image/jpg')
lama11.photos.attach(io: file3, filename: 'shallow-focus-photography-of-llama-1201426_b9gxv4.jpg', content_type: 'image/jpg')
lama11.save
puts 'lama11 created!'

puts 'Seed: Finished seeding!'

