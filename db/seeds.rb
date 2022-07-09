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
  first_name: "Model",
  last_name: "Karishma",
  email: "karishma@test.com",
  password: pw,
  phone_number: 57234567,
  role: 1
)
#2
User.create!(
  first_name: "View",
  last_name: "Cédric",
  email: "cedric@test.com",
  password: pw,
  phone_number: 55237858,
  role: 0
)
#3
User.create!(
  first_name: "Vanessa",
  last_name: "Champ",
  email: "vanessa@test.com",
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
  last_name: "Smith",
  email: "sajjaad@test.com",
  password: pw,
  phone_number: 53834589,
  role: 1
)
#6
User.create!(
  first_name: "Neelesh",
  last_name: "Buddy",
  email: "neelesh@test.com",
  password: pw,
  phone_number: 53234579,
  role: 1
)
#7
User.create!(
  first_name: "Mubeen",
  last_name: "Bankur",
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
  first_name: "Coder",
  last_name: "Vanessa",
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
  last_name: "Coder",
  email: "will@test.com",
  password: pw,
  phone_number: 53236589,
  role: 0
)
#12
User.create!(
  first_name: "Nicolas",
  last_name: "Twilio",
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
  first_name: "Twilio",
  last_name: "Nicolas",
  email: "dush@test.com",
  password: pw,
  phone_number: 53234989,
  role: 1
)
#15
User.create!(
  first_name: "Room",
  last_name: "Billy",
  email: "fabrice@test.com",
  password: pw,
  phone_number: 53234389,
  role: 1
)
#16
User.create!(
  first_name: "Guillaume",
  last_name: "Juste",
  email: "geek3@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)
#17
User.create!(
  first_name: "Juste",
  last_name: "Guillaume",
  email: "sunset@test.com",
  password: pw,
  phone_number: 53234789,
  role: 1
)
#18
User.create!(
  first_name: "Zoom",
  last_name: "Stephanie",
  email: "coowar@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)
#19
User.create!(
  first_name: "Vianney",
  last_name: "Pala",
  email: "geeky@test.com",
  password: pw,
  phone_number: 53234919,
  role: 1
)
#20
User.create!(
  first_name: "Yeshna",
  last_name: "Seeds",
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
  first_name: "Wajjiha",
  last_name: "Unicorn",
  email: "unicorn@test.com",
  password: pw,
  phone_number: 53231989,
  role: 1
)
#24
User.create!(
  first_name: "Python",
  last_name: "Vanessa",
  email: "drake@test.com",
  password: pw,
  phone_number: 53234929,
  role: 0
)
#25
User.create!(
  first_name: "Slimane",
  last_name: "Vitaa",
  email: "doe@test.com",
  password: pw,
  phone_number: 53234999,
  role: 1
)
#26
User.create!(
  first_name: "Voice",
  last_name: "Louane",
  email: "ella@test.com",
  password: pw,
  phone_number: 53214999,
  role: 1
)
#27
User.create!(
  first_name: "Julie",
  last_name: "Doré",
  email: "dont@test.com",
  password: pw,
  phone_number: 53234929,
  role: 1
)
#28
User.create!(
  first_name: "Karishma",
  last_name: "Nurse",
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
  specialty: [Carer::SPECIALTY[0], Carer::SPECIALTY[3], Carer::SPECIALTY[4], Carer::SPECIALTY[5]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/karishjo')
carer1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer2 = Carer.create!(
  user_id: 3,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/vfigaro22')
carer2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer3 = Carer.create!(
  user_id: 4,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2], Carer::SPECIALTY[6]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/ipeer28')
carer3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer4 = Carer.create!(
  user_id: 5,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Sajjaad1509')
carer4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer5 = Carer.create!(
  user_id: 16,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/man_05.jpg')
carer5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer7 = Carer.create!(
  user_id: 7,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Mobee33')
carer7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer8 = Carer.create!(
  user_id: 18,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[3]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_10.jpg')
carer8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer9 = Carer.create!(
  user_id: 13,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[4]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/adelnarod')
carer9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer10 = Carer.create!(
  user_id: 14,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[6]] # could also have used specialty.shuffle.first
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Salocin1979')
carer10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer11 = Carer.create!(
  user_id: 23,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[0]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_01.jpg')
carer11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer12 = Carer.create!(
  user_id: 20,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[2]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_08.jpg')
carer12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer13 = Carer.create!(
  user_id: 27,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[6]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797960/Nearbycare/man_10.jpg')
carer13.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer14 = Carer.create!(
  user_id: 15,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797889/Nearbycare/man_11.jpg')
carer14.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer15 = Carer.create!(
  user_id: 12,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]]# could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797864/Nearbycare/man_12.jpg')
carer15.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer16 = Carer.create!(
  user_id: 17,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[7]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797960/Nearbycare/woman_01.jpg')
carer16.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer17 = Carer.create!(
  user_id: 19,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[4]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797976/Nearbycare/woman_05.jpg')
carer17.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer18 = Carer.create!(
  user_id: 8,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[0], Carer::SPECIALTY[3]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797797/Nearbycare/man_11.jpg')
carer18.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer19 = Carer.create!(
  user_id: 26,
  region: Carer::REGION.sample, # could also have used region.shuffle.first
  specialty: [Carer::SPECIALTY[5], Carer::SPECIALTY[6]] # could also have used specialty.shuffle.first
)
file = URI.open('https://res.cloudinary.com/djfn5ptcp/image/upload/v1655797983/Nearbycare/woman_04.jpg')
carer19.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "Created #{Carer.count} carers !"

Patient.create!(
  user_id: 2,
  address: "Verdun, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[11], Patient::CONDITIONS[12]]
)

Patient.create!(
  user_id: 28,
  address: "Providence, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[4], Patient::CONDITIONS[2]]
)

Patient.create!(
  user_id: 9,
  address: "Malenga, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[1], Patient::CONDITIONS[8]]
)

Patient.create!(
  user_id: 10,
  address: "Dagotiere, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[3], Patient::CONDITIONS[6], Patient::CONDITIONS[7]]
)

Patient.create!(
  user_id: 24,
  address: "Quartier-Militaire, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[0]]
)

Patient.create!(
  user_id: 11,
  address: "Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[5], Patient::CONDITIONS[9], Patient::CONDITIONS[3]]
)
puts "Created #{Patient.count} patients!"
#1
Booking.create!(
  carer_id: 1,
  patient_id: 1,
  start_date: (Time.now + 3.day).to_datetime,
  end_date: (Time.now + 3.day).to_datetime,
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
  carer_confirmed: true
)
#3
Booking.create!(
  carer_id: 1,
  patient_id: 3,
  start_date: (Time.now + 4.day).to_datetime,
  end_date: (Time.now + 4.day + 1.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
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
  start_date: (Time.now + 3.day + 3.hour).to_datetime,
  end_date: (Time.now + 3.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#6
Booking.create!(
  carer_id: 1,
  patient_id: 3,
  start_date: (Time.now + 2.day + 3.hour).to_datetime,
  end_date: (Time.now + 2.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#7
Booking.create!(
  carer_id: 4,
  patient_id: 4,
  start_date: (Time.now + 22.day + 3.hour).to_datetime,
  end_date: (Time.now + 12.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#8
Booking.create!(
  carer_id: 5,
  patient_id: 5,
  start_date: (Time.now + 2.day + 3.hour).to_datetime,
  end_date: (Time.now + 2.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#9
Booking.create!(
  carer_id: 6,
  patient_id: 5,
  start_date: (Time.now + 2.day + 3.hour).to_datetime,
  end_date: (Time.now + 2.day + 4.hour).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
puts "Created #{Booking.count} bookings!"
puts 'Finished!'
#1
Review.create!(
  booking_id: 1,
  rating: 5,
  comment: "Great Caring"
)
#2
Review.create!(
  booking_id: 2,
  rating: 3,
  comment: "Good Caring"
)
#3
Review.create!(
  booking_id: 3,
  rating: 3,
  comment: "Bad Caring"
)
#4
Review.create!(
  booking_id: 4,
  rating: 3,
  comment: "Was Ok, Caring"
)
#5
Review.create!(
  booking_id: 5,
  rating: 4,
  comment: "Good Caring"
)
#6
Review.create!(
  booking_id: 6,
  rating: 4,
  comment: "Great Caring"
)
#7
Review.create!(
  booking_id: 7,
  rating: 3,
  comment: "Was Ok, Caring"
)
#8
Review.create!(
  booking_id: 8,
  rating: 4,
  comment: "Good Caring"
)
#9
Review.create!(
  booking_id: 9,
  rating: 4,
  comment: "Great Caring"
)
puts "Created #{Review.count} reviews!"
