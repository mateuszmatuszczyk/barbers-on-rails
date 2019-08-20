# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create!([
  {email: "admin@bor.com", password: "testadmin", password_confirmation: "testadmin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: true},
  {email: "customer@bor.com", password: "testuser", password_confirmation: "testuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false},
])

Barber.create!([
  {barber_name: "Edward",barber_photo_path: "avatar1", barber_bio: "Handy with scissors! Edward has been cutting hair since the age of 5. Vivamus aliquam sagittis sapien sit amet pulvinar. Nam et semper leo. Vivamus vel enim neque. Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar est a interdum."},
  {barber_name: "Baldy",barber_photo_path: "avatar2", barber_bio: "The only thing that came out right in his life was his hair! Baldy might have lost all his hair but you can bet that he hasn't lost his passion for cutting the hair that his clients still have. Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta."},
  {barber_name: "James",barber_photo_path: "avatar4", barber_bio: "James has been cutting hair all over the world. He combines his passion for haircutting with travelling. Book an appointment with James now, you never know when he's going to endulge in new adventure... Suspendisse eget luctus urna, sit amet ultricies dolor. Sed pretium viveiverra pulvinar esta."},
  {barber_name: "Shaggy",barber_photo_path: "avatar3", barber_bio: "Don't get put off by his name! Shaggy is one of the best in his craft! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta. Suspendisse eget luctus urna, sit amet ultricies dolor. Suspendisse eget luctus urna luctus urna, sit amet ultricies dolor."},
])

Service.create!([
  {service_name: "Haircut", service_description: "Standard Haircut. Get your hair cut for only €15! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta.", service_duration: 15, service_price: 15.0},
  {service_name: "Beard Trim", service_description: "Regular Beard Trim with an electric trimmer and razor blade finish! Vestibulum ullamcorper elementum. Mauris elementum efficitur sollicitudin. Aliquam condimentum dignissim.", service_duration: 10, service_price: 10.0},
  {service_name: "Hot Towel Shave", service_description: "Our famous Hot Towel Shave will make you and your skin feel amazing! Try it now! Quisque malesuada metus turpis, vitae dignissim elit congue sed.", service_duration: 15, service_price: 15.0},
])


