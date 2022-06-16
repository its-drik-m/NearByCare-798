# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database..."
Review.destroy_all
Carer.destroy_all

puts "Database cleaned !"
pw = 123456
region = ["North", "South", "East", "West", "Center"]
specialty = ["Palliative care", "Surgery recovery treatment", "Rehabilitation care", "Assistance during treatments",
             "Assistance and providing care", "Accomodative care", "Injury recovery treatment"]
email = ["ajaghen@test.com", "cedric@test.com", "karishma@test.com"]

  User.create!(
    first_name: "Ajaghen",
    last_name: "Ramgoolam",
    email: email[1],
    password: pw,
    phone_number: 57234567,
    role: true
  )

  User.create!(
    first_name: "Cédric",
    last_name: "Duval",
    email: email.last,
    password: pw,
    phone_number: 55237858,
    role: true
  )

  User.create!(
    first_name: "Karishma",
    last_name: "Jolie",
    email: email.first,
    password: pw,
    phone_number: 53234589,
    role: true
  )

  puts "Created #{User.count} users !"

  user_id_first = User.first.id
  user_id_last = User.last.id

  Carer.create!(
    user_id: rand(user_id_first..user_id_last),
    region: region.sample, # could also have used region.shuffle.first
    specialty: specialty.sample # could also have used specialty.shuffle.first
  )

  Carer.create!(
    user_id: rand(user_id_first..user_id_last),
    region: region.sample, # could also have used region.shuffle.first
    specialty: specialty.sample # could also have used specialty.shuffle.first
  )

  Carer.create!(
    user_id: rand(user_id_first..user_id_last),
    region: region.sample, # could also have used region.shuffle.first
    specialty: specialty.sample # could also have used specialty.shuffle.first
  )

  puts "Created #{Carer.count} carers !"

puts 'Finished!'
