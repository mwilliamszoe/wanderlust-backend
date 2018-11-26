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
asia = Region.create(name:'Asia')
north_america = Region.create(name:'North America')
south_america = Region.create(name:'South America')
europe = Region.create(name:'Europe')
middle_east = Region.create(name:'Middle East')
caribbean = Region.create(name:'Caribbean')
australia = Region.create(name:'Pacific & Australia')
central_america = Region.create(name:'Central America')
africa = Region.create(name:'Africa')

china = Country.create(name:'China', region:asia)
vietnam = Country.create(name:'Vietnam', region:asia)
japan = Country.create(name:'Japan', region:asia)
thailand = Country.create(name:'Thai', region:asia)
korea = Country.create(name:'Korea', region:asia)

usa = Country.create(name:'Usa', region:north_america)
canada = Country.create(name:'Canada', region:north_america)

columbia = Country.create(name:'Columbia', region:south_america)
peru = Country.create(name:'Peru', region:south_america)
argentina = Country.create(name:'Argentina', region:south_america)
chile = Country.create(name:'Chile', region:south_america)
brazil = Country.create(name:'Brazil', region:south_america)

france = Country.create(name:'France', region:europe)
england = Country.create(name:'England', region:europe)
germany = Country.create(name:'Germany', region:europe)
finland = Country.create(name:'Finland', region:europe)
spain = Country.create(name:'Spain', region:europe)

kenya = Country.create(name:'Kenya', region:africa)
south_africa = Country.create(name:'South Africa', region:africa)
zimbabwe = Country.create(name:'Zimbabwe', region:africa)
egypt = Country.create(name:'Egypt', region:africa)
morrocco = Country.create(name:'Morrocoo', region:africa)

surfing = Experience.create(title:'Surfing', mood:'outdoors', country:china)
snowboarding = Experience.create(title:'Snowboarding', mood:'outdoors', country:germany)
cooking = Experience.create(title:'Cooking', mood:'food', country:france)
carnival = Experience.create(title:'Carnivale', mood:'party', country:brazil)
safari = Experience.create(title:'Safari', mood:'outdoors', country:kenya)
wine_tasting = Experience.create(title:'Wine Tasing', mood:'food', country:spain)
hiking = Experience.create(title:'Hiking', mood:'outdoors', country:england)
tango = Experience.create(title:'Tango', mood:'party', country:argentina)
bbq = Experience.create(title:'BBQ', mood:'food', country:usa)

ue1 = UserExperience.create(user:bob, experience:surfing)