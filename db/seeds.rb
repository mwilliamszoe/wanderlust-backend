
User.destroy_all
Region.destroy_all
Country.destroy_all
Experience.destroy_all
Like.destroy_all

bob = User.create(email:'bob@mail.com', password:'bob')
stacy = User.create(email:'stacy@mail.com', password:'stacy')


asia = Region.create(name:'Asia', image:"https://images.unsplash.com/photo-1528884089-4582fe06c516?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=caa16390466200a3c19a4629df9b67bb&auto=format&fit=crop&w=1350&q=80")
north_america = Region.create(name:'North & Central America', image:'https://images.pexels.com/photos/417119/pexels-photo-417119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
south_america = Region.create(name:'South America', image:'https://images.unsplash.com/photo-1461863109726-246fa9598dc3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3b97aaf2bdc23863c4e1afef5c93fada&auto=format&fit=crop&w=500&q=60')
europe = Region.create(name:'Europe', image:'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=50b722a080aa7a9fd10746b95b82c2e7&auto=format&fit=crop&w=1350&q=80')
middle_east = Region.create(name:'Middle East & Northern Africa', image:'https://images.unsplash.com/photo-1528862973381-9bc5ad6d4227?ixlib=rb-0.3.5&s=7812f892051b2e565bbc9aa8f9db0244&auto=format&fit=crop&w=634&q=80')
caribbean = Region.create(name:'Caribbean', image:'https://images.unsplash.com/photo-1500759285222-a95626b934cb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=15641eda0c2356f833f0c21dcfa3ddc8&auto=format&fit=crop&w=1350&q=80')
australia = Region.create(name:'Pacific & Australia', image:'https://images.unsplash.com/photo-1534099635511-8bb701f5f602?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=012e4df58051a8cadd4cb75ce40637a6&auto=format&fit=crop&w=1351&q=80')
antarctic = Region.create(name:'Antarctica', image:'https://images.unsplash.com/photo-1493329262838-35e73449e995?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5342e1c964e46ea7c5bb05e39667056e&auto=format&fit=crop&w=1267&q=80')
africa = Region.create(name:'sub-Saharn Africa', image:'https://images.unsplash.com/photo-1528277342758-f1d7613953a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0b23f0e98071f89d35b210bcb8e52d1a&auto=format&fit=crop&w=1350&q=80')

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

surfing = Experience.create!(title:'Surfing', country:china, user:User.first)
snowboarding = Experience.create!(title:'Snowboarding', country:germany, user:User.first)
cooking = Experience.create!(title:'Cooking', country:france, user:User.second)
carnival = Experience.create!(title:'Carnivale', country:brazil, user:User.second)
safari = Experience.create!(title:'Safari', country:kenya, user:User.second)
wine_tasting = Experience.create!(title:'Wine Tasing', country:spain, user:User.second)
hiking = Experience.create!(title:'Hiking', country:england, user:User.second)
tango = Experience.create!(title:'Tango', country:argentina, user:User.second)
bbq = Experience.create!(title:'BBQ', country:usa, user:User.second)

like1 = Like.create(user:bob, experience: bbq)
like1 = Like.create(user:bob, experience: tango)
like1 = Like.create(user:stacy, experience: tango)
like2 = Like.create(user:stacy, experience: safari)