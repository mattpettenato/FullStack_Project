# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ActiveRecord::Base.transaction do

require 'open-uri'

BusinessCategory.destroy_all
Category.destroy_all
User.destroy_all
Business.destroy_all
Review.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

demo = User.create!({username: "demo", email: "demo@demo.com", password: "demopassword"})

user1 = User.create!({username: "MaxJohnson", email: "max@max.com", password: "passwordmax"})
user2 = User.create!({username: "AnnaViviana", email: "anna@anna.com", password: "passwordanna"})
user3 = User.create!({username: "JeongJo", email: "jeong@jo.com", password: "passwordjeong"})
user4 = User.create!({username: "wineicecream", email: "wineicecream@wineicecream.com", password: "passwordwineicecream"})
user5 = User.create!({username: "baconsoftdrink", email: "baconsoftdrink@.baconsoftdrinkcom", password: "passwordbaconsoftdrink"})
user6 = User.create!({username: "sweetpicklechicken", email: "sweetpicklechicken@sweetpicklechicken.com", password: "passwordsweetpicklechicken"})
user7 = User.create!({username: "cowsnail", email: "cowsnail@.cowsnailcom", password: "passwordcowsnail"})
user8 = User.create!({username: "spiritham", email: "spiritham@.com", password: "passwordspiritham"})
user9 = User.create!({username: "applepiewalrus", email: "applepiewalrus@.com", password: "passwordapplepiewalrus"})
user10 = User.create!({username: "oceanmine", email: "oceanmine@oceanmine.com", password: "passwordoceanmine"})
user11 = User.create!({username: "banananeo", email: "banananeo@banananeo.com", password: "passwordbanananeo"})


bus1 = Business.create!({name: "Taquería El Farolito", about: "Mexican, Bar, Late Night", rating: 4.5, phone: "(415) 824-7877", address: "2779 Mission St, San Francisco, CA 94110", hours:"10:00AM–1:45AM", websiteurl: "https://elfarolitosf.com/", latitude: 37.75266096263757, longitude: -122.41819051574423})

b1p1 = URI.open('https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus1pic1.jpg')
b1p2 = URI.open('https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus1pic2.jpg')
b1p3 = URI.open('https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus1pic3.jpg')
b1p4 = URI.open('https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus1pic4.jpg')

bus1.photos.attach(io: b1p1, filename: 'bus1pic1.jpg')
bus1.photos.attach(io: b1p2, filename: "bus1pic2.jpg")
bus1.photos.attach(io: b1p3, filename: "bus1pic3.jpg")
bus1.photos.attach(io: b1p4, filename: "bus1pic4.jpg")

revT1 = Review.create(body: "They have the best shrimp burritos  I totally recommend this to anyone looking for a good juicy burrito in SF", rating: 5, author_id: user7.id, business_id: bus1.id)
revT2 = Review.create(body: "This is one of the classic spots where the food is great but the service not so much. The burritos here are some of the best I've had in sf. Although I'd grab it to go and eat it in mission dolores park as the inside space itself is not that clean. I also ordered a drink that they forgot and later refused to give me. So come expecting good food, not good service.", rating: 4, author_id: user11.id, business_id: bus1.id)
revT3 = Review.create(body: "That's one expensive burrito", rating: 2, author_id: user10.id, business_id: bus1.id)
revT4 = Review.create(body: "El Farolito is elite! I love how they're open so late and the prices are AMAZING. You definitely have to get the super burrito, which adds a whole half avocado. Service is fast and friendly. Their salsas are also amazing and I usually have to ask for a few to go with my burrito.", rating: 5, author_id: user8.id, business_id: bus1.id)

bus2 = Business.create!({name: "Kogi Gogi BBQ", about: "Barbeque, Korean, Beer Bar", rating: 4, phone: "(415) 702-6792", address: "1358 9th Ave San Francisco, CA 94122", hours:"12:00PM-10:00PM", websiteurl: "https://www.kogigogibbq.com/", latitude: 37.76324493147762, longitude: -122.46607400140118})

b2p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus2pic1.jpg")
b2p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus2pic2.jpg")
b2p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus2pic3.jpg")
b2p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus2pic4.jpg")

bus2.photos.attach(io: b2p1, filename: "bus2pic1.jpg")
bus2.photos.attach(io: b2p2, filename: "bus2pic2.jpg")
bus2.photos.attach(io: b2p3, filename: "bus2pic3.jpg")
bus2.photos.attach(io: b2p4, filename: "bus2pic4.jpg")

revK1 = Review.create(body: "his place hits the spot and was a great way to end our trip to the city. It would be wise to call ahead to reserve a table as they get really busy at dinner service (not surprising because the food is soooooo goooood!). Reminds me of AYCE KBBQ in LA.", rating: 5, author_id: user7.id, business_id: bus2.id)
revK2 = Review.create(body: "I ate here on February 15th, 2022 and paid $38 per person for dinner. The selection of meat were good and the side dishes were nice. I tried the spicy rice cake and corn cheese, which were very delicious. The spicy rice cake was crispy but not burnt and its flavor was sweet and spicy. The corn cheese had chopped onions, tomatoes, peppers and the cheese was cooked to a nice crisp.", rating: 4, author_id: user2.id, business_id: bus2.id)
revK3 = Review.create(body: "Place is very bustling and busy - but the staff was very attentive, even when we were waiting for a friend to arrive and didn't order yet they checked in a few times to make sure we were okay. Got our orders rlly quickly and had lots of grill changes", rating: 5, author_id: user4.id, business_id: bus2.id)
revK4 = Review.create(body: "I walked by this place a few times and it definitely caught my eye because it was definitely the VIBE I was looking for. I finally found an excuse, when I took out someone for their birthday and we had a great time!", rating: 4, author_id: user8.id, business_id: bus2.id)

bus3 = Business.create!({name: "District Tea", about: "Bubble Tea, Boba, Sandwiches", rating: 4.5, phone: "(415) 638-6134", address: "2154 Mission St San Francisco, CA 94110", hours:"11:00AM-5:00PM", websiteurl: "https://www.districtteasf.com/", latitude: 37.762734486517225, longitude: -122.4196499725657})

b3p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus3pic1.jpg")
b3p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus3pic2.jpg")
b3p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus3pic3.jpg")
b3p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus3pic4.jpg")

bus3.photos.attach(io: b3p1, filename: "bus3pic1.jpg")
bus3.photos.attach(io: b3p2, filename: "bus3pic2.jpg")
bus3.photos.attach(io: b3p3, filename: "bus3pic3.jpg")
bus3.photos.attach(io: b3p4, filename: "bus3pic4.jpg")

revDB1 = Review.create(body: "I love coming back to District Tea time and time again. You get the taste of real tea- something that is often missing in many other boba shops. Their quality of the drinks never falter and their service is unbeatable. And holy nuts, don't get me started on the snacks!!! The popcorn chicken and Korean hot dogs are heaven sent.", rating: 5, author_id: user4.id, business_id: bus3.id)
revDB2 = Review.create(body: "District Tea was offering a half gallon size of my exact go-to drink at all boba places (Jasmine Oat Milk Tea) so I had to take advantage and I'm so glad I did! It was the perfect amount and really satisfied my quarantine craving", rating: 6, author_id: user2.id, business_id: bus3.id)
revDB3 = Review.create(body: "There's lots of boba places in SF so it's easy to get worn out seeing one in every neighborhood. District Tea though should be on the top of your list if you're in the Mission district! ", rating: 5, author_id: user8.id, business_id: bus3.id)
revDB4 = Review.create(body: "Having gone to many of the boba shops in the West Bay & Peninsula, my boba rankings include District tea as top 3 on my list of top boba shops.", rating: 5, author_id: user9.id, business_id: bus3.id)

bus4 = Business.create!({
                        name: "North Beach Pizza", 
                        about: "Pizza, Italian, Sandwiches", 
                        rating: 3, 
                        phone: "(415) 433-2444", 
                        address: "1462 Grant Ave San Francisco, CA 94133", 
                        hours:"11:00AM–10:00PM",
                        websiteurl:"https://www.mynorthbeachpizza.com/",
                        latitude: 37.800593863103884,
                        longitude: -122.40735018605879
                        })

b4p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus4pic1.jpg")
b4p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus4pic2.jpg")
b4p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus4pic3.jpg")
b4p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus4pic4.jpg")

bus4.photos.attach(io: b4p1, filename: "bus4pic1.jpg")
bus4.photos.attach(io: b4p2, filename: "bus4pic2.jpg")
bus4.photos.attach(io: b4p3, filename: "bus4pic3.jpg")
bus4.photos.attach(io: b4p4, filename: "bus4pic4.jpg")

revPZ1 = Review.create(body: "Came here with my family, and will 100% be coming back soon with friends", rating: 5, author_id: user8.id, business_id: bus4.id)
revPZ2 = Review.create(body: "Just in the mood for a slice. So many choices: hawaiian, meat combo, cheese, veggie, pesto.  I picked  a slice of pesto. They took it out of the warmer and served it. Yes, it was fast service but it was not hot and it was eating pizza that has been sitting there (don't know how long).", rating: 3, author_id: user7.id, business_id: bus4.id)
revPZ3 = Review.create(body: "My usual pizza place closed down. So I tried this place since I knew about the Original NB Pizza in little Italy. I was so surprised how good the pizza was! Amazing! It is now my favorite pizza place. The dough was soft, plenty of toppings and they use real cheese! I have no problem ordering almost every weekend.", rating: 5, author_id: user11.id, business_id: bus4.id)
revPZ4 = Review.create(body: "North beach pizza is the best pizza place in terms of taste and service. We had a pizza delivered quickly and it was hot like it just came out of the oven. Delivery guy was friendly. I would definitely be back and recommend this place to anyone. Thanks !!!!", rating: 4, author_id: user3.id, business_id: bus4.id)

rev1 = Review.create(body: "The food was great", rating: 4, author_id: user1.id, business_id: bus1.id)
rev2 = Review.create(body:"The food was great", rating: 4, author_id: user1.id, business_id: bus2.id)
rev3 = Review.create(body:"The food and drinks are amazing", rating: 3, author_id: user2.id, business_id: bus3.id)
rev4 = Review.create(body:"The food and drinks are amazing", rating: 4, author_id: user3.id, business_id: bus4.id)

bus5 = Business.create!({ name: "Nash Hot Chicken & Ramen", about: "Chicken, Ramen", rating: 4.5, phone: "(415) 655-9122", address: "3970 17th St Ste B San Francisco, CA 94114", hours: "12:00PM-9:00PM", websiteurl: "https://www.nashchickramen.com", latitude: 37.762674091103484, longitude: -122.43436564504873 })

b5p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus5pic1.jpeg")
b5p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus5pic2.jpeg")
b5p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus5pic3.jpeg")
b5p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus5pic4.jpeg")

bus5.photos.attach(io: b5p1, filename: "bus5pic1.jpeg")
bus5.photos.attach(io: b5p2, filename: "bus5pic2.jpeg")
bus5.photos.attach(io: b5p3, filename: "bus5pic3.jpeg")
bus5.photos.attach(io: b5p4, filename: "bus5pic4.jpeg")

bus5rev1 = Review.create(body: "Ramen had so much flavor! Will 100% be coming here again!", rating: 5, author_id: user5.id, business_id: bus5.id)
bus5rev1 = Review.create(body: "The chicken had so much flavor! I cannot wait to eat here with my friends again!", rating: 5, author_id: user7.id, business_id: bus5.id)
bus5rev1 = Review.create(body: "Was very busy and I was hungry and tired", rating: 3, author_id: user5.id, business_id: bus5.id)

# categories

c1 = Category.create!({
  title: 'italian'
})

c2 = Category.create!({
  title: 'asian'
})

c3 = Category.create!({
  title: 'mexican'
})

c4 = Category.create!({
  title: 'boba'
})

c5 = Category.create!({
  title: 'pizza'
})

c6 = Category.create!({
  title: "tacos",
})

c7 = Category.create!({
  title: "bbq",
})

c8 = Category.create!({
  title: "food",
})

c9 = Category.create!({
  title: "drinks",
})

c10 = Category.create!({
  title: "korean",
})

c11 = Category.create!({
  title: "chicken"
})

c12 = Category.create!({
  title: "coffee",
})

c13 = Category.create!({
  title: "dessert",
})

c14 = Category.create!({
  title: "pastry",
})

c15 = Category.create!({
  title: "tea",
})

c16 = Category.create!({
  title: "pasta",
})

BusinessCategory.create!({
  category_id: c1.id,
  business_id: bus4.id
})

BusinessCategory.create!({
    category_id: c2.id,
    business_id: bus2.id,
})

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus3.id
})

BusinessCategory.create!({
  category_id: c3.id,
  business_id: bus1.id,
})

BusinessCategory.create!({
  category_id: c4.id,
  business_id: bus3.id
})

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus5.id
})

BusinessCategory.create!({
  category_id: c5.id,
  business_id: 4
})

BusinessCategory.create!({
  category_id: c6.id,
  business_id: 1,
})

BusinessCategory.create!({
  category_id: c7.id,
  business_id: 2,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: 1,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: 2,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: 3,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: 4,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: 5,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: 3,
})

BusinessCategory.create!({
  category_id: c10.id,
  business_id: 2,
})

bus6 = Business.create!({ name: "Bella Trattoria", about: "Italian, Pasta", rating: 4.5, phone: "(415) 221-0305", address: "3854 Geary Blvd San Francisco, CA 94118", hours: "11:00AM-9:00PM", websiteurl: "https://osteriabella.com", latitude: 37.781567730282, longitude: -122.46090431504788 })

b6p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus6pic1.jpeg")
b6p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus6pic2.jpeg")
b6p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus6pic3.jpeg")
b6p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus6pic4.jpeg")

bus6.photos.attach(io: b6p1, filename: "bus6pic1.jpeg")
bus6.photos.attach(io: b6p2, filename: "bus6pic2.jpeg")
bus6.photos.attach(io: b6p3, filename: "bus6pic3.jpeg")
bus6.photos.attach(io: b6p4, filename: "bus6pic4.jpeg")

BusinessCategory.create!({
  category_id: c1.id,
  business_id: bus6.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus6.id,
})

BusinessCategory.create!({
  category_id: c5.id,
  business_id: bus6.id,
})

BusinessCategory.create!({
  category_id: c11.id,
  business_id: bus5.id,
})

revB1 = Review.create(body: "Came here with my family, and will 100% be coming back soon with friends", rating: 5, author_id: user2.id, business_id: bus6.id)
revB2 = Review.create(body: "The food was great", rating: 4, author_id: user1.id, business_id: bus6.id)
revB3 = Review.create(body: "Dessert was amazing but I wanted more", rating: 3, author_id: user2.id, business_id: bus6.id)
revB4 = Review.create(body: "The food and drinks are amazing", rating: 4, author_id: user3.id, business_id: bus6.id)

bus7 = Business.create!({ name: "Diamond Coffee N Pastry", about: "Coffee, Tea, Bakery", rating: 4.5, phone: "(628) 226-9139", address: "1014 Clement St San Francisco, CA 94118", hours: "9:00AM-4:00PM", websiteurl: "https://www.diamondbeans.com/", latitude: 37.78304760742992, longitude: -122.47022173115299 })

b7p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus7pic1.jpeg")
b7p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus7pic2.jpeg")
b7p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus7pic3.jpeg")
b7p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus7pic4.jpeg")

bus7.photos.attach(io: b7p1, filename: "bus7pic1.jpeg")
bus7.photos.attach(io: b7p2, filename: "bus7pic2.jpeg")
bus7.photos.attach(io: b7p3, filename: "bus7pic3.jpeg")
bus7.photos.attach(io: b7p4, filename: "bus7pic4.jpeg")

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c12.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c13.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c14.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c15.id,
  business_id: bus7.id,
})

BusinessCategory.create!({
  category_id: c15.id,
  business_id: bus3.id,
})

rev7r1 = Review.create(body: "super cute shop w many different coffee flavors ~ they also have these super delicious looking croffles - will definitely try next time! They have a limited number of tables but we were able to find a spot to study! Theres also outlets at each table :)", rating: 5, author_id: user7.id, business_id: bus7.id)
rev7r2 = Review.create(body: "Cute new coffee shop alert in the Richmond! I love the interior - bright and airy! They even have a doggy area in the shop in the back corner of the shop! The service was amazing! The staff was extremely friendly and attentive!", rating: 4, author_id: user2.id, business_id: bus7.id)
rev7r3 = Review.create(body: "The drinks were pretty sweet but nothing overwhelming. The croffle was delicious but i wouldn't substitute a meal for it. It's just a nice treat. I noticed some reviews that they were unsatisfied with proportions based on how pricey things are. Remember, you're paying for the aesthetic of the place. Customer service is amazing! The staff was patient and kind.", rating: 4, author_id: user9.id, business_id: bus7.id)
rev7r4 = Review.create(body: "Super cute coffee shop on a relatively quiet strip of the inner Richmond with trendy/instagrammable croffles, fancy $$ drinks, and very few indoor seats.", rating: 3, author_id: user6.id, business_id: bus7.id)

bus8 = Business.create!({ name: "Tea & Others", about: "Boba, Bubble Tea", rating: 4.5, phone: "(415) 864-4920", address: "250 Divisadero St San Francisco, CA 94117", hours: "12:00PM-6:00PM", websiteurl: "http://www.teaandothers.com", latitude: 37.771613174681086, longitude: -122.43684554453965 })

b8p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus8pic1.jpeg")
b8p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus8pic2.jpeg")
b8p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus8pic3.jpeg")
b8p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus8pic4.jpeg")

bus8.photos.attach(io: b8p1, filename: "bus8pic1.jpeg")
bus8.photos.attach(io: b8p2, filename: "bus8pic2.jpeg")
bus8.photos.attach(io: b8p3, filename: "bus8pic3.jpeg")
bus8.photos.attach(io: b8p4, filename: "bus8pic4.jpeg")

rev8r1 = Review.create(body: "Both drinks were good. There was a short wait since they didn't have the dirty boba ready at the time. I felt like the Sunny Side Up was a bit too small for me. I wish they had it in a bigger size for that drink. I'm rarely ever in that area so hopefully I'll get a chance to go by and try their other drinks.", rating: 4, author_id: user9.id, business_id: bus8.id)
rev8r2 = Review.create(body: "Amazing tea place, would definitely go again (I have been there thrice already). Teas are flavorful", rating: 5, author_id: user10.id, business_id: bus8.id)
rev8r3 = Review.create(body: "Tried their jasmine milk tea today, their tea flavor is pretty strong (which I love) but unfortunately the boba is pretty much tasteless and slightly over cooked/soggy. I think any bubble tea drink place needs to have their boba flavor and texture right.", rating: 3, author_id: user3.id, business_id: bus8.id)
rev8r4 = Review.create(body: "Would come back again when I visiting for the Taro Matcha Latte, because I love the taro paste too much. Enjoyable experience!", rating: 5, author_id: user7.id, business_id: bus8.id)

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus8.id,
})

BusinessCategory.create!({
  category_id: c4.id,
  business_id: bus8.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus8.id,
})

BusinessCategory.create!({
  category_id: c15.id,
  business_id: bus8.id,
})

BusinessCategory.create!({
  category_id: c15.id,
  business_id: bus3.id,
})

BusinessCategory.create!({
  category_id: c4.id,
  business_id: bus8.id,
})

BusinessCategory.create!({
  category_id: c4.id,
  business_id: bus3.id,
})

bus9 = Business.create!({ name: "The Bird", about: "Chicken, Sandwiches", rating: 4.5, phone: "(415) 872-9825", address: "115 New Montgomery St San Francisco, CA 94105", hours: "10:00AM-8:00PM", websiteurl: "http://www.thebirdsf.com", latitude: 37.78743965491058, longitude: -122.40009290215059 })

b9p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus9pic1.jpeg")
b9p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus9pic2.jpeg")
b9p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus9pic3.jpeg")
b9p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus9pic4.jpeg")

bus9.photos.attach(io: b9p1, filename: "bus9pic1.jpeg")
bus9.photos.attach(io: b9p2, filename: "bus9pic2.jpeg")
bus9.photos.attach(io: b9p3, filename: "bus9pic3.jpeg")
bus9.photos.attach(io: b9p4, filename: "bus9pic4.jpeg")

revB9r1 = Review.create(body: "Incredibly fast, fried chicken is delicious-- there is cinnamon in batter that adds phenomenal touch of sweetness and the coleslaw has apple slices, which add even more to the experience. It was delicious!!", rating: 5, author_id: user8.id, business_id: bus9.id)
revB9r2 = Review.create(body: "The fried chicken sandwich is amazingly delicious! The fried chicken itself is fried to perfection and is well seasoned, not overly salty. It's dark meat so it's super juicy and tender. The cold slaw and pickles are fresh and give a nice crunch to the sandwich. The bun is soft and buttery. It's definitely worth the price for how good this is!", rating: 4, author_id: user9.id, business_id: bus9.id)
revB9r3 = Review.create(body: "So the spicy chicken is like a fried Sriracha chicken sandwich. It was okay, but honestly I'm more wowed by Popeye's spicy chicken sandwich and this one is like 25% more expensive with not much crunch or anything of a wow factor. It's just a fried Sriracha chicken sandwich that tastes like it's made by your local cafeteria kitchen worker.", rating: 3, author_id: user2.id, business_id: bus9.id)
revB9r4 = Review.create(body: "I ordered the spicy fried chicken sandwich. The breading has lots of flavor and its crunchy, and the chicken meat was tender. The spiciness was below average per my standard. The Cole Slaw in the burger balanced out the overall flavor and texture of the sandwich as it added some juiciness", rating: 4, author_id: user10.id, business_id: bus9.id)

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus9.id,
})

BusinessCategory.create!({
  category_id: c11.id,
  business_id: bus9.id,
})

bus10 = Business.create!({ name: "Fiorella", about: "Italian, Pasta, Wine", rating: 4.5, phone: "(415) 340-3049", address: "2339 Clement St San Francisco, CA 94121", hours: "5:00PM-9:30PM", websiteurl: "http://www.fiorella-sf.com", latitude: 37.781983371345405, longitude: -122.48454235994076 })

b10p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus10pic1.jpeg")
b10p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus10pic2.jpeg")
b10p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus10pic3.jpeg")
b10p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus10pic4.jpeg")

bus10.photos.attach(io: b10p1, filename: "bus10pic1.jpeg")
bus10.photos.attach(io: b10p2, filename: "bus10pic2.jpeg")
bus10.photos.attach(io: b10p3, filename: "bus10pic3.jpeg")
bus10.photos.attach(io: b10p4, filename: "bus10pic4.jpeg")

revB10r1 = Review.create(body: "Entrees we ordered were the rigatoni al bolognese classico and burrata pizza. Pasta was cooked well and in a tasty sauce, although plating was a little messy. The pizza can with a hefty ball of burrata on top, any cheese lovers heaven. There was plenty of sauce full of fresh tomatoes.", rating: 5, author_id: user7.id, business_id: bus10.id)
revB10r2 = Review.create(body: "The food here was delicious. We had the Salsiccia Pizza and the Rigatoni al Bolognese Classico. I highly recommend either of those! 4 stars mainly because though it was pretty good, but I've had a few better. I would still come back though!", rating: 4, author_id: user5.id, business_id: bus10.id)
revB10r3 = Review.create(body: "I've been wanting to try this place for a while now and finally made a reservation for last night. The restaurant has a great ambiance and the food was incredible! We had the clam pie and mushroom risotto and they were both really good! Lemon juice on the clam pie was a nice touch  next time I want to try their pasta and their mushroom pizza! Highly recommend making a reservation (they're on open table)", rating: 5, author_id: user4.id, business_id: bus10.id)
revB10r4 = Review.create(body: "Overall, the food was decent (because I love Italian) but it definitely does not compare to the other Italian options in the city.", rating: 3, author_id: user9.id, business_id: bus10.id)

BusinessCategory.create!({
  category_id: c1.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c5.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c16.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c12.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c13.id,
  business_id: bus10.id,
})

BusinessCategory.create!({
  category_id: c14.id,
  business_id: bus10.id,
})

bus11 = Business.create!({ name: "Padrecito", about: "Mexican, Brunch, Bar", rating: 4.5, phone: "(415) 742-5505", address: "901 Cole St San Francisco, CA 94117", hours: "4:30PM-9:00PM", websiteurl: "http://www.padrecitosf.com", latitude: 37.76582667000361, longitude: -122.45019674446523 })


b11p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus11pic1.jpeg")
b11p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus11pic2.jpeg")
b11p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus11pic3.jpeg")
b11p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus11pic4.jpeg")

bus11.photos.attach(io: b11p1, filename: "bus11pic1.jpeg")
bus11.photos.attach(io: b11p2, filename: "bus11pic2.jpeg")
bus11.photos.attach(io: b11p3, filename: "bus11pic3.jpeg")
bus11.photos.attach(io: b11p4, filename: "bus11pic4.jpeg")

revB11r1 = Review.create(body: "The food is amazing I've had almost everything on the menu and nothing has disappointed so far. I went for my birthday recently and had the fish tacos - fish was nice and crispy on the outside and soft on the inside. The ceviches are AMAZING and quessabirria is sooo savory, hearty, and flavorful.", rating: 5, author_id: user4.id, business_id: bus11.id)
revB11r2 = Review.create(body: "This place is right around the corner from me and I finally got around to trying it last Friday. Went around 8:30 and there was only a 10 minute wait or so. Wanted to order the calamari tacos, but they were unfortunately sold out, so I got the carnitas one instead, which was delicious! The chips and guac appetizer was also some of the best I've had in San Francisco.", rating: 4, author_id: user2.id, business_id: bus11.id)
revB11r3 = Review.create(body: "We decided to go for the huevos rancheros and huevos Benedictos and ordered coffee for drinks (since they don't offer any other espresso drinks). The coffee was quite nice and the food was very tasty with generous portion sizes. Service was very good and our hostess checked on us from time to time to make sure we had everything we need. Great place for brunch!", rating: 4, author_id: user4.id, business_id: bus11.id)
revB11r4 = Review.create(body: "If you're a fan of breakfast burritos, Padrecito's is definitely one I would order. It comes with salsa and guac too! The chips and guac are also absolutely worth it, since they give a ton of guac and an assortment of salsas. The chips are super fresh too.", rating: 4, author_id: user9.id, business_id: bus11.id)

BusinessCategory.create!({
  category_id: c3.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c6.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c12.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c13.id,
  business_id: bus11.id,
})

BusinessCategory.create!({
  category_id: c3.id,
  business_id: bus11.id,
})

bus12 = Business.create!({ name: "Taqueria Los Mayas", about: "Tacos, Mexican", rating: 4.5, phone: "(415) 548-2800", address: "331 Clement St San Francisco, CA 94118", hours: "11:00AM-10:00PM", websiteurl: "https://taquerialosmayassf.com", latitude: 37.78310938371122, longitude: -122.46286567528215 })

b12p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus12pic1.jpeg")
b12p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus12pic2.jpeg")
b12p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus12pic3.jpeg")
b12p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus12pic4.jpeg")

bus12.photos.attach(io: b12p1, filename: "bus12pic1.jpeg")
bus12.photos.attach(io: b12p2, filename: "bus12pic2.jpeg")
bus12.photos.attach(io: b12p3, filename: "bus12pic3.jpeg")
bus12.photos.attach(io: b12p4, filename: "bus12pic4.jpeg")

revb12r1 = Review.create(body: "We had 2 empanadas that were huge but mostly masa so that's why the 1 star doc and it's a little pricey for a bit of a hole on the wall. Also had 2 tacos. Homemade tortillas which were nice and the Chile verde was awesome. Al Pastor was a bit dry. Definitely worth a visit though!", rating: 4, author_id: user3.id, business_id: bus12.id)
revb12r2 = Review.create(body: "Very bad customer service. Very rude!!! I came across this place on yelp and decided to give it a try", rating: 1, author_id: user8.id, business_id: bus12.id)
revb12r3 = Review.create(body: "As for last night my order was a Plate of seasoned chicken, rice, beans, corn tortilla, plus chips and salsa. Upon arrival my order was ready, and well packaged, and the staff polite and friendly. The portions were more then ample, and for the most part the seasoning worked with the only exception being the beans. I know it's just beans, but I did not detect any notable seasoning, that said at least they were not over salted.", rating: 4, author_id: user11.id, business_id: bus12.id)
revb12r4 = Review.create(body: "Ceviche and fajitas are pretty good.", rating: 5, author_id: user10.id, business_id: bus12.id)

BusinessCategory.create!({
  category_id: c3.id,
  business_id: bus12.id,
})

BusinessCategory.create!({
  category_id: c6.id,
  business_id: bus12.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus12.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus12.id,
})

BusinessCategory.create!({
  category_id: c14.id,
  business_id: bus12.id,
})

bus13 = Business.create!({ name: "Daeho Kalbijjim", about: "Korean, Soup, Noodles", rating: 4.5, phone: "(415) 563-1388", address: "1620 Post St San Francisco, CA 94115", hours: "11:00AM-9:00PM", websiteurl: "https://www.instagram.com/daeho_official/?hl=en", latitude: 37.78310938371122, longitude: -122.46286567528215 })

b13p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus13pic1.jpeg")
b13p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus13pic2.jpeg")
b13p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus13pic3.jpeg")
b13p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus13pic4.jpeg")

bus13.photos.attach(io: b13p1, filename: "bus13pic1.jpeg")
bus13.photos.attach(io: b13p2, filename: "bus13pic2.jpeg")
bus13.photos.attach(io: b13p3, filename: "bus13pic3.jpeg")
bus13.photos.attach(io: b13p4, filename: "bus13pic4.jpeg")

revb13r1 = Review.create(body: "Kalbijjim was super delicious and tasty! Definitely on the richer side and you'll have enough to take home as well! I recommend trying their purple rice.", rating: 5, author_id: user2.id, business_id: bus13.id)
revb13r2 = Review.create(body: "They did run out of the ox tail with short ribs when we came here so we just ordered the short rib! It was sooo flavorful and delicious! Although I wanted the meat to be super soft like the ox tail but it was still good!", rating: 4, author_id: user9.id, business_id: bus13.id)
revb13r3 = Review.create(body: "Daeho is amazing. Their most popular dish is of course their kalbijim. Most people order with cheese on top - great for instagram and tastes pretty good. I'm also perfectly happy without though so I load up on the glass noodles, get extra meat to enjoy for the next few days, and rice cakes", rating: 5, author_id: user7.id, business_id: bus13.id)
revb13r4 = Review.create(body: "The music is extremely loud. It's hard to hear your dinner companions without shouting. However, it's fun and upbeat, so this is definitely a place to go for groups looking to have a fun time. Overall, great food, but the service and loudness might be a turn off for returning.", rating: 4, author_id: user10.id, business_id: bus13.id)

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus13.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus13.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus13.id,
})

BusinessCategory.create!({
  category_id: c10.id,
  business_id: bus13.id,
})

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus13.id,
})

bus14 = Business.create!({ name: "Yakiniq", about: "Korean, BBQ", rating: 4.5, phone: "(415) 441-9292", address: "1640 Post St Fl 2 San Francisco, CA 94115", hours: "5:00PM-10:00PM", websiteurl: "http://www.yakiniq-sanjose.com/", latitude: 37.786118597850376, longitude: -122.42894930409635 })

b14p1 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus14pic1.jpeg")
b14p2 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus14pic2.jpeg")
b14p3 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus14pic3.jpeg")
b14p4 = URI.open("https://melp-aa-dev.s3.us-west-1.amazonaws.com/bus14pic4.jpeg")

bus14.photos.attach(io: b14p1, filename: "bus14pic1.jpeg")
bus14.photos.attach(io: b14p2, filename: "bus14pic2.jpeg")
bus14.photos.attach(io: b14p3, filename: "bus14pic3.jpeg")
bus14.photos.attach(io: b14p4, filename: "bus14pic4.jpeg")

revb14r1 = Review.create(body: "Love coming here, it's one of my favorite KBBQ spots in the Bay Area. The meat selections are great, the steamed egg is a must for my table. I always get the radish wraps because I think it's the perfect compliment for  the meat. Prices are fair and the waitlist makes it easier to have an idea of how long you'll be waiting. I just wish they didn't forget my order so often, but that's understandable.", rating: 4, author_id: user6.id, business_id: bus14.id)
revb14r2 = Review.create(body: "if you are a party that is smaller than 6, don't bother coming, because this place will sit people who come after you if they are a bigger party. According to the front desk staff, it is because that's how we make money. (Yes. He literally said that.)", rating: 1, author_id: user9.id, business_id: bus14.id)
revb14r3 = Review.create(body: "Was able to make reservations over the phone for a party of 8 and it pulled through. It's very popular so calling right when they open ascertains a reservation. Usually they do through Yelp for waiting lines. Love the food, the service was good, very attentive servers. Definitely a favorite spot", rating: 5, author_id: user11.id, business_id: bus14.id)
revb14r4 = Review.create(body: "This place is delicious and fun for so many reasons! First of all, all you can eat for a decent price. Always a win. They also have cheese corn which not all places have common so that's an extra point in my book.", rating: 5, author_id: user10.id, business_id: bus14.id)

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus14.id,
})

BusinessCategory.create!({
  category_id: c8.id,
  business_id: bus14.id,
})

BusinessCategory.create!({
  category_id: c9.id,
  business_id: bus14.id,
})

BusinessCategory.create!({
  category_id: c10.id,
  business_id: bus14.id,
})

BusinessCategory.create!({
  category_id: c2.id,
  business_id: bus14.id,
})

BusinessCategory.create!({
  category_id: c7.id,
  business_id: bus14.id,
})
