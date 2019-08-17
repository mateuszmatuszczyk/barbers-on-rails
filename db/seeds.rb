# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {email: "testadmin@bor.com", password: "testadmin", password_confirmation: "testadmin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: true},
  {email: "testcustomer@bor.com", password: "testuser", password_confirmation: "testuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false},
])

Barber.create!([
  {barber_name: "Edward", barber_bio: "Handy with scissors!"},
  {barber_name: "Baldy", barber_bio: "The only thing in his life that came out right!"},
])

