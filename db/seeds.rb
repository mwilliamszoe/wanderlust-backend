# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Region.destroy_all
Country.destroy_all
Experience.destroy_all
UserExperience.destroy_all

bob = User.create(name:'bob', email:'bob@mail.com', password:'dolphins')
asia = Region.create(name:'asia')
china = Country.create(name:'china', region:asia)
surfing = Experience.create(title:'surfing', mood:'outdoors', country:china)
ue1 = UserExperience.create(user:bob, experience:surfing)