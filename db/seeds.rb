# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative '../app/models/carer'

# require 'faker'
require 'uri'
require "open-uri"

puts "Cleaning up database..."
Review.destroy_all
Booking.destroy_all
Patient.destroy_all
Carer.destroy_all
User.destroy_all

puts "Database cleaned !"
pw = 123456

User.create!(
  first_name: "Ajaghen",
  last_name: "Smith",
  email: "designer@test.com",
  password: pw,
  phone_number: 57234567,
  role: 1
)

User.create!(
  first_name: "Cédric",
  last_name: "Duval",
  email: "cedric@test.com",
  password: pw,
  phone_number: 55237858,
  role: 0
)

User.create!(
  first_name: "Karishma",
  last_name: "Jolie",
  email: "karishma@test.com",
  password: pw,
  phone_number: 53234529,
  role: 1
)

User.create!(
  first_name: "Ibrahim",
  last_name: "Peerbux",
  email: "ibrahim@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)

User.create!(
  first_name: "Sajjaad",
  last_name: "Wagon",
  email: "sajjaad@test.com",
  password: pw,
  phone_number: 53834589,
  role: 1
)

User.create!(
  first_name: "Neelesh",
  last_name: "Angry-Bird",
  email: "neelesh@test.com",
  password: pw,
  phone_number: 53234579,
  role: 1
)

User.create!(
  first_name: "Mubeen",
  last_name: "FrontEnd-Master",
  email: "mubeen@test.com",
  password: pw,
  phone_number: 53134589,
  role: 1
)

User.create!(
  first_name: "Basile",
  last_name: "Driver",
  email: "basile@test.com",
  password: pw,
  phone_number: 53233589,
  role: 1
)

User.create!(
  first_name: "Cedric",
  last_name: "Thonney",
  email: "perefoura@test.com",
  password: pw,
  phone_number: 53232589,
  role: 1
)

User.create!(
  first_name: "Mun",
  last_name: "Kadell",
  email: "mun@test.com",
  password: pw,
  phone_number: 53237589,
  role: 1
)

User.create!(
  first_name: "Will",
  last_name: "Smith",
  email: "will@test.com",
  password: pw,
  phone_number: 53236589,
  role: 1
)

User.create!(
  first_name: "Chris",
  last_name: "Rock",
  email: "chris@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)

User.create!(
  first_name: "Adel",
  last_name: "Narod",
  email: "adel@test.com",
  password: pw,
  phone_number: 53234889,
  role: 1
)

User.create!(
  first_name: "Dushyant",
  last_name: "Teacher",
  email: "dush@test.com",
  password: pw,
  phone_number: 53234989,
  role: 1
)

User.create!(
  first_name: "Billy",
  last_name: "Perle",
  email: "fabrice@test.com",
  password: pw,
  phone_number: 53234389,
  role: 1
)

User.create!(
  first_name: "Vanesse",
  last_name: "Coder",
  email: "geek3@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)

User.create!(
  first_name: "Vanessa",
  last_name: "Sunset-Coder",
  email: "sunset@test.com",
  password: pw,
  phone_number: 53234789,
  role: 1
)

User.create!(
  first_name: "Stephanie",
  last_name: "Coowar",
  email: "coowar@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)

User.create!(
  first_name: "Vanessa",
  last_name: "Geeky",
  email: "geeky@test.com",
  password: pw,
  phone_number: 53234919,
  role: 1
)

User.create!(
  first_name: "Lizzy",
  last_name: "Joe",
  email: "geek2@test.com",
  password: pw,
  phone_number: 53734986,
  role: 1
)

User.create!(
  first_name: "Lizzy",
  last_name: "What",
  email: "geek@test.com",
  password: pw,
  phone_number: 53274983,
  role: 1
)

User.create!(
  first_name: "Yeshna",
  last_name: "Girly",
  email: "girly@test.com",
  password: pw,
  phone_number: 53238989,
  role: 1
)

User.create!(
  first_name: "Yeshna",
  last_name: "Unicorn",
  email: "unicorn@test.com",
  password: pw,
  phone_number: 53231989,
  role: 1
)

User.create!(
  first_name: "Rihanna",
  last_name: "Drake",
  email: "drake@test.com",
  password: pw,
  phone_number: 53234929,
  role: 1
)

User.create!(
  first_name: "Jane",
  last_name: "Doe",
  email: "doe@test.com",
  password: pw,
  phone_number: 53234999,
  role: 1
)

User.create!(
  first_name: "Ella",
  last_name: "Elle-la",
  email: "ella@test.com",
  password: pw,
  phone_number: 53214999,
  role: 1
)

User.create!(
  first_name: "Jena",
  last_name: "Dont",
  email: "dont@test.com",
  password: pw,
  phone_number: 53234929,
  role: 1
)

User.create!(
  first_name: "Cindy",
  last_name: "Developer",
  email: "cin@test.com",
  password: pw,
  phone_number: 53231999,
  role: 1
)

User.create!(
  first_name: "Care",
  last_name: "Giver",
  email: "care@test.com",
  password: pw,
  phone_number: 53238999,
  role: 1
)

User.create!(
  first_name: "Emma",
  last_name: "Depp",
  email: "depp@test.com",
  password: pw,
  phone_number: 53234299,
  role: 1
)

puts "Created #{User.count} users !"

# user_id_first = User.first.id
# user_id_last = User.last.id

carer1 = Carer.create!(
  user_id: 1,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797899/Nearbycare/man_01.jpg')
carer1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer2 = Carer.create!(
  user_id: 2,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797882/Nearbycare/man_02.jpg')
carer2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer3 = Carer.create!(
  user_id: 3,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655803880/Nearbycare/woman_17.jpg')
carer3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer4 = Carer.create!(
  user_id: 4,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797876/Nearbycare/man_03.jpg')
carer4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer5 = Carer.create!(
  user_id: 5,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797870/Nearbycare/man_04.jpg')
carer5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer6 = Carer.create!(
  user_id: 6,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797864/Nearbycare/man_05.jpg')
carer6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer7 = Carer.create!(
  user_id: 7,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797849/Nearbycare/man_06.jpg')
carer7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer8 = Carer.create!(
  user_id: 8,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797839/Nearbycare/man_07.jpg')
carer8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer9 = Carer.create!(
  user_id: 9,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797827/Nearbycare/man_08.jpg')
carer9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer10 = Carer.create!(
  user_id: 10,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797820/Nearbycare/man_09.jpg')
carer10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer11 = Carer.create!(
  user_id: 11,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797810/Nearbycare/man_10.jpg')
carer11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer12 = Carer.create!(
  user_id: 12,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797797/Nearbycare/man_11.jpg')
carer12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer13 = Carer.create!(
  user_id: 13,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797787/Nearbycare/man_12.jpg')
carer13.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer14 = Carer.create!(
  user_id: 14,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797889/Nearbycare/man_13.jpg')
carer14.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer15 = Carer.create!(
  user_id: 15,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655803871/Nearbycare/woman_18.jpg')
carer15.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer16 = Carer.create!(
  user_id: 16,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655798003/Nearbycare/woman_01.jpg')
carer16.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer17 = Carer.create!(
  user_id: 17,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797997/Nearbycare/woman_02.jpg')
carer17.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer18 = Carer.create!(
  user_id: 18,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797990/Nearbycare/woman_03.jpg')
carer18.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer19 = Carer.create!(
  user_id: 19,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797983/Nearbycare/woman_04.jpg')
carer19.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer20 = Carer.create!(
  user_id: 20,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_05.jpg')
carer20.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer21 = Carer.create!(
  user_id: 21,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797960/Nearbycare/woman_06.jpg')
carer21.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer22 = Carer.create!(
  user_id: 22,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797955/Nearbycare/woman_08.jpg')
carer22.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer23 = Carer.create!(
  user_id: 23,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797950/Nearbycare/woman_09.jpg')
carer23.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer24 = Carer.create!(
  user_id: 24,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797945/Nearbycare/woman_10.jpg')
carer24.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer25 = Carer.create!(
  user_id: 18,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797939/Nearbycare/woman_11.jpg')
carer25.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer26 = Carer.create!(
  user_id: 26,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797933/Nearbycare/woman_12.jpg')
carer26.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer27 = Carer.create!(
  user_id: 27,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797927/Nearbycare/woman_13.jpg')
carer27.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer28 = Carer.create!(
  user_id: 28,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797922/Nearbycare/woman_14.jpg')
carer28.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer29 = Carer.create!(
  user_id: 29,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797916/Nearbycare/woman_15.jpg')
carer29.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer30 = Carer.create!(
  user_id: 30,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY.sample # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797911/Nearbycare/woman_16.jpg')
carer30.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "Created #{Carer.count} carers !"

puts 'Finished!'
