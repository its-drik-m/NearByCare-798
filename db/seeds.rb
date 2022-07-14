require_relative '../app/models/carer'
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
  first_name: "Vanessa",
  last_name: "Renaissance",
  email: "vanessa@test.com",
  password: pw,
  phone_number: 53234529,
  role: 1
)
#2
User.create!(
  first_name: "Cédric",
  last_name: "Master",
  email: "cedric@test.com",
  password: pw,
  phone_number: 55237858,
  role: 1
)
#3
User.create!(
  first_name: "Ajaghen",
  last_name: "Designer",
  email: "designer@test.com",
  password: pw,
  phone_number: 57234567,
  role: 1
)
#4
User.create!(
  first_name: "Karishma",
  last_name: "Model",
  email: "karishma@test.com",
  password: pw,
  phone_number: 57234567,
  role: 1
)
#5
User.create!(
  first_name: "Ibrahim",
  last_name: "Captain",
  email: "ibrahim@test.com",
  password: pw,
  phone_number: 53234289,
  role: 1
)
#6
User.create!(
  first_name: "Sajjaad",
  last_name: "Smith",
  email: "sajjaad@test.com",
  password: pw,
  phone_number: 53834589,
  role: 1
)
#7
User.create!(
  first_name: "Neelesh",
  last_name: "Angry-bird",
  email: "neelesh@test.com",
  password: pw,
  phone_number: 53234579,
  role: 1
)
#8
User.create!(
  first_name: "Mubeen",
  last_name: "Front",
  email: "mubeen@test.com",
  password: pw,
  phone_number: 53134589,
  role: 1
)
#9
User.create!(
  first_name: "Basile",
  last_name: "Driver",
  email: "basile@test.com",
  password: pw,
  phone_number: 53233589,
  role: 1
)
#10
User.create!(
  first_name: "Mun",
  last_name: "Buddy",
  email: "mun@test.com",
  password: pw,
  phone_number: 53237589,
  role: 1
)
#11
User.create!(
  first_name: "Nirmaan",
  last_name: "Will",
  email: "nirmaan@test.com",
  password: pw,
  phone_number: 53236589,
  role: 1
)
#12
User.create!(
  first_name: "Nicolas",
  last_name: "Twilio",
  email: "nico@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)
#13
User.create!(
  first_name: "Divisen",
  last_name: "News",
  email: "divisen@test.com",
  password: pw,
  phone_number: 53234989,
  role: 1
)
#14
User.create!(
  first_name: "Billy",
  last_name: "Billy",
  email: "billy@test.com",
  password: pw,
  phone_number: 53234389,
  role: 1
)
#15
User.create!(
  first_name: "Fabrice",
  last_name: "Sensei",
  email: "fabrice@test.com",
  password: pw,
  phone_number: 53234589,
  role: 1
)
#16
User.create!(
  first_name: "Adel",
  last_name: "TA",
  email: "adel@test.com",
  password: pw,
  phone_number: 53234889,
  role: 1
)
#17
User.create!(
  first_name: "Zoom",
  last_name: "Stephanie",
  email: "coowar@test.com",
  password: pw,
  phone_number: 53234289,
  role: 0
)
#18
User.create!(
  first_name: "Vianney",
  last_name: "Pala",
  email: "geeky@test.com",
  password: pw,
  phone_number: 53234919,
  role: 0
)
#19
User.create!(
  first_name: "Yeshna",
  last_name: "Seeds",
  email: "geek2@test.com",
  password: pw,
  phone_number: 53734986,
  role: 0
)
#20
User.create!(
  first_name: "Chachi",
  last_name: "Justement",
  email: "geek@test.com",
  password: pw,
  phone_number: 53274983,
  role: 0
)
#21
User.create!(
  first_name: "Yeshna",
  last_name: "Girly",
  email: "girly@test.com",
  password: pw,
  phone_number: 53238989,
  role: 0
)

puts "Created #{User.count} users !"

carer1 = Carer.create!(
  user_id: 1,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[0], Carer::SPECIALTY[3], Carer::SPECIALTY[4], Carer::SPECIALTY[5]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/vfigaro22')
carer1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer2 = Carer.create!(
  user_id: 2,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/its-drik-m')
carer2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer3 = Carer.create!(
  user_id: 3,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2], Carer::SPECIALTY[6]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/ajaghen')
carer3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer4 = Carer.create!(
  user_id: 4,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/karishjo')
carer4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer5 = Carer.create!(
  user_id: 5,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/ipeer28')
carer5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer6 = Carer.create!(
  user_id: 6,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Sajjaad1509')
carer6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer7 = Carer.create!(
  user_id: 7,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/neel7927')
carer7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer8 = Carer.create!(
  user_id: 8,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[3]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Mobee33')
carer8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer9 = Carer.create!(
  user_id: 9,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[4]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/BasileM')
carer9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer10 = Carer.create!(
  user_id: 10,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[6]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/ATrillionCoder')
carer10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer11 = Carer.create!(
  user_id: 11,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[0]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Nirmaan250792')
carer11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer12 = Carer.create!(
  user_id: 12,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[3], Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Salocin1979')
carer12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer13 = Carer.create!(
  user_id: 13,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[6]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/Divisen')
carer13.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer14 = Carer.create!(
  user_id: 14,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/bperle97')
carer14.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer15 = Carer.create!(
  user_id: 15,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[1], Carer::SPECIALTY[2]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/xeonnux')
carer15.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

carer16 = Carer.create!(
  user_id: 16,
  region: Carer::REGION.sample,
  specialty: [Carer::SPECIALTY[2], Carer::SPECIALTY[7]]
)
file = URI.open('https://kitt.lewagon.com/placeholder/users/adelnarod')
carer16.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "Created #{Carer.count} carers !"

Patient.create!(
  user_id: 17,
  address: "Verdun, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[11], Patient::CONDITIONS[12]]
)

Patient.create!(
  user_id: 18,
  address: "Providence, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[4], Patient::CONDITIONS[2]]
)

Patient.create!(
  user_id: 19,
  address: "Malenga, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[1], Patient::CONDITIONS[8]]
)

Patient.create!(
  user_id: 20,
  address: "Dagotiere, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[3], Patient::CONDITIONS[6], Patient::CONDITIONS[7]]
)

Patient.create!(
  user_id: 21,
  address: "Quartier-Militaire, Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[0]]
)

Patient.create!(
  user_id: 18,
  address: "Moka, Mauritius",
  health_conditions: [Patient::CONDITIONS[5], Patient::CONDITIONS[9], Patient::CONDITIONS[3]]
)
puts "Created #{Patient.count} patients!"
#1
Booking.create!(
  carer_id: 1,
  patient_id: 1,
  start_date: (Time.now + 1.day).to_datetime,
  end_date: (Time.now + 1.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#2
Booking.create!(
  carer_id: 2,
  patient_id: 3,
  start_date: (Time.now + 2.day).to_datetime,
  end_date: (Time.now + 2.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#3
Booking.create!(
  carer_id: 1,
  patient_id: 3,
  start_date: (Time.now + 3.day).to_datetime,
  end_date: (Time.now + 3.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#4
Booking.create!(
  carer_id: 3,
  patient_id: 4,
  start_date: (Time.now + 6.day).to_datetime,
  end_date: (Time.now + 6.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#5
Booking.create!(
  carer_id: 1,
  patient_id: 5,
  start_date: (Time.now + 10.day).to_datetime,
  end_date: (Time.now + 10.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#6
Booking.create!(
  carer_id: 1,
  patient_id: 3,
  start_date: (Time.now + 11.day).to_datetime,
  end_date: (Time.now + 11.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#7
Booking.create!(
  carer_id: 4,
  patient_id: 4,
  start_date: (Time.now + 12.day).to_datetime,
  end_date: (Time.now + 12.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#8
Booking.create!(
  carer_id: 5,
  patient_id: 5,
  start_date: (Time.now + 13.day).to_datetime,
  end_date: (Time.now + 13.day).to_datetime,
  patient_confirmed: true,
  carer_confirmed: true
)
#9
Booking.create!(
  carer_id: 6,
  patient_id: 5,
  start_date: (Time.now + 6.day).to_datetime,
  end_date: (Time.now + 6.day + 4.hour).to_datetime,
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
  rating: 2,
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
