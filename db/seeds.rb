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
north_america = Region.create(name:'north_america')
south_america = Region.create(name:'south_america')
europe = Region.create(name:'europe')
africa = Region.create(name:'africa')

china = Country.create(name:'china', region:asia)
vietnam = Country.create(name:'vietnam', region:asia)
japan = Country.create(name:'japan', region:asia)
thailand = Country.create(name:'thai', region:asia)
korea = Country.create(name:'korea', region:asia)

usa = Country.create(name:'usa', region:north_america)
canada = Country.create(name:'canada', region:north_america)

columbia = Country.create(name:'columbia', region:south_america)
peru = Country.create(name:'peru', region:south_america)
argentina = Country.create(name:'argentina', region:south_america)
chile = Country.create(name:'chile', region:south_america)
brazil = Country.create(name:'brazil', region:south_america)

france = Country.create(name:'france', region:europe)
england = Country.create(name:'england', region:europe)
germany = Country.create(name:'germany', region:europe)
finland = Country.create(name:'finland', region:europe)
spain = Country.create(name:'spain', region:europe)

kenya = Country.create(name:'kenya', region:africa)
south_africa = Country.create(name:'south africa', region:africa)
zimbabwe = Country.create(name:'zimbabwe', region:africa)
egypt = Country.create(name:'egypt', region:africa)
morrocco = Country.create(name:'morrocoo', region:africa)

surfing = Experience.create(title:'surfing', mood:'outdoors', country:china)
snowboarding = Experience.create(title:'snowboarding', mood:'outdoors', country:germany)
cooking = Experience.create(title:'cooking', mood:'food', country:france)
carnival = Experience.create(title:'carnivale', mood:'party', country:brazil)
safari = Experience.create(title:'safari', mood:'outdoors', country:kenya)
wine_tasting = Experience.create(title:'wine tasing', mood:'food', country:spain)
hiking = Experience.create(title:'hiking', mood:'outdoors', country:england)
tango = Experience.create(title:'tango', mood:'party', country:argentina)
bbq = Experience.create(title:'bbq', mood:'food', country:usa)
ue1 = UserExperience.create(user:bob, experience:surfing)