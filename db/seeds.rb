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
#1
User.create!(
  first_name: "Ajaghen",
  last_name: "Smith",
  email: "designer@test.com",
  password: pw,
  phone_number: 57234567,
  role: 1
)
#2
User.create!(
  first_name: "Cédric",
  last_name: "Duval",
  email: "cedric@test.com",
  password: pw,
  phone_number: 55237858,
  role: 0
)
#3
User.create!(
  first_name: "Karishma",
  last_name: "Jolie",
  email: "karishma@test.com",
  password: pw,
  phone_number: 53234529,
  role: 1
)
#4
User.create!(
  first_name: "Ibrahim",
  last_name: "Peerbux",
  email: "ibrahim@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)
#5
User.create!(
  first_name: "Sajjaad",
  last_name: "Wagon",
  email: "sajjaad@test.com",
  password: pw,
  phone_number: 53834589,
  role: 1
)
#6
User.create!(
  first_name: "Neelesh",
  last_name: "Angry-Bird",
  email: "neelesh@test.com",
  password: pw,
  phone_number: 53234579,
  role: 1
)
#7
User.create!(
  first_name: "Mubeen",
  last_name: "FrontEnd-Master",
  email: "mubeen@test.com",
  password: pw,
  phone_number: 53134589,
  role: 1
)
#8
User.create!(
  first_name: "Basile",
  last_name: "Driver",
  email: "basile@test.com",
  password: pw,
  phone_number: 53233589,
  role: 1
)
#9
User.create!(
  first_name: "Cedric",
  last_name: "Thonney",
  email: "perefoura@test.com",
  password: pw,
  phone_number: 53232589,
  role: 0
)
#10
User.create!(
  first_name: "Mun",
  last_name: "Kadell",
  email: "mun@test.com",
  password: pw,
  phone_number: 53237589,
  role: 0
)
#11
User.create!(
  first_name: "Will",
  last_name: "Smith",
  email: "will@test.com",
  password: pw,
  phone_number: 53236589,
  role: 0
)
#12
User.create!(
  first_name: "Chris",
  last_name: "Rock",
  email: "chris@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)
#13
User.create!(
  first_name: "Adel",
  last_name: "Narod",
  email: "adel@test.com",
  password: pw,
  phone_number: 53234889,
  role: 1
)
#14
User.create!(
  first_name: "Dushyant",
  last_name: "Teacher",
  email: "dush@test.com",
  password: pw,
  phone_number: 53234989,
  role: 1
)
#15
User.create!(
  first_name: "Billy",
  last_name: "Perle",
  email: "fabrice@test.com",
  password: pw,
  phone_number: 53234389,
  role: 1
)
#16
User.create!(
  first_name: "Vanesse",
  last_name: "Coder",
  email: "geek3@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)
#17
User.create!(
  first_name: "Vanessa",
  last_name: "Sunset-Coder",
  email: "sunset@test.com",
  password: pw,
  phone_number: 53234789,
  role: 1
)
#18
User.create!(
  first_name: "Stephanie",
  last_name: "Coowar",
  email: "coowar@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)
#19
User.create!(
  first_name: "Vanessa",
  last_name: "Geeky",
  email: "geeky@test.com",
  password: pw,
  phone_number: 53234919,
  role: 1
)
#20
User.create!(
  first_name: "Lizzy",
  last_name: "Joe",
  email: "geek2@test.com",
  password: pw,
  phone_number: 53734986,
  role: 1
)
#21
User.create!(
  first_name: "Lizzy",
  last_name: "What",
  email: "geek@test.com",
  password: pw,
  phone_number: 53274983,
  role: 1
)
#22
User.create!(
  first_name: "Yeshna",
  last_name: "Girly",
  email: "girly@test.com",
  password: pw,
  phone_number: 53238989,
  role: 1
)
#23
User.create!(
  first_name: "Yeshna",
  last_name: "Unicorn",
  email: "unicorn@test.com",
  password: pw,
  phone_number: 53231989,
  role: 1
)
#24
User.create!(
  first_name: "Rihanna",
  last_name: "Drake",
  email: "drake@test.com",
  password: pw,
  phone_number: 53234929,
  role: 0
)
#25
User.create!(
  first_name: "Jane",
  last_name: "Doe",
  email: "doe@test.com",
  password: pw,
  phone_number: 53234999,
  role: 1
)
#26
User.create!(
  first_name: "Ella",
  last_name: "Elle-la",
  email: "ella@test.com",
  password: pw,
  phone_number: 53214999,
  role: 1
)
#27
User.create!(
  first_name: "Jena",
  last_name: "Dont",
  email: "dont@test.com",
  password: pw,
  phone_number: 53234929,
  role: 1
)
#28
User.create!(
  first_name: "Cindy",
  last_name: "Developer",
  email: "cin@test.com",
  password: pw,
  phone_number: 53231999,
  role: 0
)
#29
User.create!(
  first_name: "Care",
  last_name: "Giver",
  email: "care@test.com",
  password: pw,
  phone_number: 53238999,
  role: 1
)
#30
User.create!(
  first_name: "Emma",
  last_name: "Depp",
  email: "depp@test.com",
  password: pw,
  phone_number: 53234299,
  role: 1
)

puts "Created #{User.count} users !"

carer1 = Carer.create!(
  user_id: 1,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[4], Carer::SPECIALTY[5], Carer::SPECIALTY[6]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797899/Nearbycare/man_01.jpg')
carer1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer2 = Carer.create!(
  user_id: 3,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[3]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655803880/Nearbycare/woman_17.jpg')
carer2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer3 = Carer.create!(
  user_id: 4,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[3], Carer::SPECIALTY[7]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797876/Nearbycare/man_03.jpg')
carer3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer4 = Carer.create!(
  user_id: 5,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[3]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797870/Nearbycare/man_04.jpg')
carer4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer5 = Carer.create!(
  user_id: 16,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[2] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655803871/Nearbycare/woman_18.jpg')
carer5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer7 = Carer.create!(
  user_id: 7,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[3] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797849/Nearbycare/man_06.jpg')
carer7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer8 = Carer.create!(
  user_id: 18,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[4] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655798003/Nearbycare/woman_01.jpg')
carer8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer9 = Carer.create!(
  user_id: 13,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[4], Carer::SPECIALTY[5]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797827/Nearbycare/man_08.jpg')
carer9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer10 = Carer.create!(
  user_id: 14,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[7]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797820/Nearbycare/man_09.jpg')
carer10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer11 = Carer.create!(
  user_id: 23,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[1] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797997/Nearbycare/woman_02.jpg')
carer11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer12 = Carer.create!(
  user_id: 20,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[4], Carer::SPECIALTY[3]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797990/Nearbycare/woman_03.jpg')
carer12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer13 = Carer.create!(
  user_id: 27,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[7] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797960/Nearbycare/woman_10.jpg')
carer13.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer14 = Carer.create!(
  user_id: 15,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[2] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797889/Nearbycare/man_13.jpg')
carer14.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer15 = Carer.create!(
  user_id: 12,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[3]]# could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797864/Nearbycare/man_05.jpg')
carer15.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer16 = Carer.create!(
  user_id: 17,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[7]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797960/Nearbycare/woman_06.jpg')
carer16.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer17 = Carer.create!(
  user_id: 19,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: Carer::SPECIALTY[5] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_05.jpg')
carer17.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer18 = Carer.create!(
  user_id: 8,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[4]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797797/Nearbycare/man_11.jpg')
carer18.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer19 = Carer.create!(
  user_id: 26,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[6], Carer::SPECIALTY[7]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797983/Nearbycare/woman_04.jpg')
carer19.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "Created #{Carer.count} carers !"

Patient.create!(
  user_id: 2,
  address: "Port-Louis, mauritius",
  health_conditions: [Patient::CONDITIONS[12], Patient::CONDITIONS[13]]
)

Patient.create!(
  user_id: 28,
  address: "Chemin Grenier, mauritius",
  health_conditions: [Patient::CONDITIONS[5], Patient::CONDITIONS[3]]
)

Patient.create!(
  user_id: 9,
  address: "Flacq, mauritius",
  health_conditions: [Patient::CONDITIONS[2], Patient::CONDITIONS[9]]
)

Patient.create!(
  user_id: 10,
  address: "Tamarin, mauritius",
  health_conditions: [Patient::CONDITIONS[4], Patient::CONDITIONS[7], Patient::CONDITIONS[8]]
)

Patient.create!(
  user_id: 24,
  address: "Saint Pierre, mauritius",
  health_conditions: [Patient::CONDITIONS[1]]
)

Patient.create!(
  user_id: 11,
  address: "Mahebourg, mauritius",
  health_conditions: [Patient::CONDITIONS[6], Patient::CONDITIONS[10], Patient::CONDITIONS[14]]
)
puts "Created #{Patient.count} patients!"
#1
Booking.create!(
  carer_id: 1,
  patient_id: 1,
  start_date: (Time.now + 1.day).to_datetime,
  end_date: (Time.now + 2.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#2
Booking.create!(
  carer_id: 2,
  patient_id: 3,
  start_date: (Time.now + 1.day).to_datetime,
  end_date: (Time.now + 2.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: false
)
#3
Booking.create!(
  carer_id: 1,
  patient_id: 3,
  start_date: (Time.now + 2.day).to_datetime,
  end_date: (Time.now + 2.day + 1.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: false
)
#4
Booking.create!(
  carer_id: 3,
  patient_id: 4,
  start_date: (Time.now + 1.day).to_datetime,
  end_date: (Time.now + 2.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#5
Booking.create!(
  carer_id: 1,
  patient_id: 5,
  start_date: (Time.now + 2.day + 3.hour).to_datetime,
  end_date: (Time.now + 2.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#6
Booking.create!(
  carer_id: 1,
  patient_id: 5,
  start_date: (Time.now + 4.day + 3.hour).to_datetime,
  end_date: (Time.now + 4.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: false
)
puts "Created #{Booking.count} bookings!"
puts 'Finished!'

Review.create!(
  booking_id: 1,
  rating: [1, 2, 3, 4, 5].sample,
  comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
)

# Review.create!(
#   booking_id: 2,
#   rating: [1, 2, 3, 4, 5].sample,
#   comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
# )

# Review.create!(
#   booking_id: 3,
#   rating: [1, 2, 3, 4, 5].sample,
#   comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
# )

Review.create!(
  booking_id: 4,
  rating: [1, 2, 3, 4, 5].sample,
  comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
)

Review.create!(
  booking_id: 5,
  rating: [1, 2, 3, 4, 5].sample,
  comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
)

# Review.create!(
#   booking_id: 6,
#   rating: [1, 2, 3, 4, 5].sample,
#   comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
# )

# Review.create!(
#   booking_id: 1,
#   rating: [1, 2, 3, 4, 5].sample,
#   comment: ["Great Caring", "Good Caring", "Bad Caring", "Terrible Caring", "Awful Caring"].sample
# )

puts "Created #{Review.count} reviews!"
