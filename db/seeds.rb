# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

holly = User.create(name: "Holly Winters", email: "holly.winters@example.com", password: "123456", password_confirmation: "123456")
holly.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

dalton = User.create(name: "Dalton Delgado", email: "dalton.delgado@example.com", password: "123456", password_confirmation: "123456")
dalton.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

brock = User.create(name: "Brock Cochran", email: "brock.cochran@example.com", password: "123456", password_confirmation: "123456")
brock.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

sopoline = User.create(name: "Sopoline Stanton", email: "sopoline.stanton@example.com", password: "123456", password_confirmation: "123456")
sopoline.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

barry = User.create(name: "Barry Thomas", email: "barry.thomas@example.com", password: "123456", password_confirmation: "123456")
barry.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

gannon = User.create(name: "Gannon Hebert", email: "gannon.hebert@example.com", password: "123456", password_confirmation: "123456")
gannon.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

brittany = User.create(name: "Brittany Gillespie", email: "brittany.gillespie@example.com", password: "123456", password_confirmation: "123456")
brittany.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

rahim = User.create(name: "Rahim Yates", email: "rahim.yates@example.com", password: "123456", password_confirmation: "123456")
rahim.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

kylie = User.create(name: "Kylie Kent", email: "kylie.kent@example.com", password: "123456", password_confirmation: "123456")
kylie.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

cailin = User.create(name: "Cailin Dodson", email: "cailin.dodson@example.com", password: "123456", password_confirmation: "123456")
cailin.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")

michael = User.create(name: "Michael Hartl", email: "michael.hartl@example.com", password: "123456", password_confirmation: "123456")
michael.create_hard_skill(linkedin: "https://www.linkedin.com/", social_media_profile: "https://www.facebook.com", website: "http://www.google.com")


#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
