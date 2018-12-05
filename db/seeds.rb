
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
carib = Region.create(name:'Caribbean', image:'https://images.unsplash.com/photo-1500759285222-a95626b934cb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=15641eda0c2356f833f0c21dcfa3ddc8&auto=format&fit=crop&w=1350&q=80')
australia = Region.create(name:'New Zealand & Australia', image:'https://images.unsplash.com/photo-1534099635511-8bb701f5f602?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=012e4df58051a8cadd4cb75ce40637a6&auto=format&fit=crop&w=1351&q=80')
africa = Region.create(name:'sub-Saharn Africa', image:'https://images.unsplash.com/photo-1528277342758-f1d7613953a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0b23f0e98071f89d35b210bcb8e52d1a&auto=format&fit=crop&w=1350&q=80')

turkey = Country.create(name:'Turkey', region:middle_east,  image:'https://images.unsplash.com/photo-1513781050488-6dd358209a1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=933&q=80')
egypt = Country.create(name:'Egypt', region:middle_east, image:'https://images.unsplash.com/photo-1514470336873-ae7fe31b8cee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
morrocco = Country.create(name:'Morrocoo', region:middle_east, image:'https://images.unsplash.com/photo-1489749798305-4fea3ae63d43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

china = Country.create(name:'China', region:asia,  image:'https://images.unsplash.com/photo-1513781050488-6dd358209a1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=933&q=80')
vietnam = Country.create(name:'Vietnam', region:asia, image:'https://images.unsplash.com/photo-1528127269322-539801943592?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
japan = Country.create(name:'Japan', region:asia, image:'https://images.unsplash.com/photo-1480796927426-f609979314bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
thailand = Country.create(name:'Thai', region:asia, image:'https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
korea = Country.create(name:'Korea', region:asia, image:'https://images.unsplash.com/photo-1513092530180-d316e03fde6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')

usa = Country.create(name:'America', region:north_america, image:'https://images.unsplash.com/photo-1526638684360-95cdcee762ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1960&q=80')
canada = Country.create(name:'Canada', region:north_america, image:'https://images.unsplash.com/photo-1508693926297-1d61ee3df82a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')

columbia = Country.create(name:'Columbia', region:south_america, image:'https://images.unsplash.com/photo-1534943441045-1009d7cb0bb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1038&q=80')
peru = Country.create(name:'Peru', region:south_america, image:'https://images.unsplash.com/photo-1534615098829-958121bcc188?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
argentina = Country.create(name:'Argentina', region:south_america, image:'https://images.unsplash.com/photo-1518655604674-e8fadcf0c710?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
chile = Country.create(name:'Chile', region:south_america, image:'https://images.unsplash.com/photo-1490782300182-697b80ad4293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80')
brazil = Country.create(name:'Brazil', region:south_america, image:'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')

france = Country.create(name:'France', region:europe, image:'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
england = Country.create(name:'England', region:europe, image:'https://images.unsplash.com/photo-1518782999472-72f2ca3cb18f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
germany = Country.create(name:'Germany', region:europe, image:'https://images.unsplash.com/photo-1534313314376-a72289b6181e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
italy = Country.create(name:'Italy', region:europe, image:'https://images.unsplash.com/photo-1453747063559-36695c8771bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
spain = Country.create(name:'Spain', region:europe, image:'https://images.unsplash.com/photo-1533551268962-824e232f7ee1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80')

kenya = Country.create(name:'Kenya', region:africa, image:'https://images.unsplash.com/photo-1470114888332-5bcd36dd1940?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
south_africa = Country.create(name:'South Africa', region:africa, image:'https://images.unsplash.com/photo-1496497243327-9dccd845c35f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
tanzania=Country.create(name:'Tanzania', region:africa, image:'https://images.unsplash.com/photo-1464388334095-4e05c18297cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
madagascar=Country.create(name:'Madagascar', region:africa, image:'https://images.unsplash.com/photo-1510920685278-c2287be9136d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
wakanda = Country.create(name:'Wakanda', region:africa, image:'https://d.wpimg.pl/1194431703-1436054875/czarna-pantera.jpg')

jamaica = Country.create(name:'Jamaica', region:carib, image:'https://images.unsplash.com/photo-1501620905740-6c420cea828f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80')
cuba = Country.create(name:'Cuba', region:carib, image:'https://images.unsplash.com/photo-1518754744014-dcca006cd68f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2897&q=80')
pr = Country.create(name:'Peurto Rico', region:carib, image:'https://images.unsplash.com/photo-1509233725247-49e657c54213?ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80')

Country.create(name:'Australia', region:australia, image:'https://images.unsplash.com/photo-1524293581917-878a6d017c71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
Country.create(name:'New Zealand', region:australia, image:'https://images.unsplash.com/photo-1492681950396-e1052bfa206e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')




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