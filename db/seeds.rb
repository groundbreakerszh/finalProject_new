# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


michael = User.create(name: "Michael Hartl", email: "michael.hartl@example.com", password: "123456", password_confirmation: "123456")
# michael.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")


#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
