

puts "creating restaurants..."

lilia = Restaurant.create(name: "Lilia", image_url: "https://media.cntraveler.com/photos/58599e53857eae6855ec5a5d/16:9/w_2560,c_limit/best-restaurants-NYC-lilia-2016.jpg", cuisine: "Italian", price_point: "$$$", description: "Lilia brings the best of Italy to Williamsburg where wood-fired seafood, hand crafted pastas, classic Italian cocktails and warm hospitality come together to create a casual dining experience.", reviews: "★★★★★", location: "Brooklyn")
le_cou_cou = Restaurant.create(name: "Le Cou Cou", image_url: "https://media.architecturaldigest.com/photos/577d55aea643a1576bc2bf2d/master/w_1600%2Cc_limit/1.jpg", cuisine: "French", price_point: "$$$$", description: "After taking Paris by storm, internationally acclaimed chef Daniel Rose returns home with Le Coucou. A gracious modern nod to fine European gastronomy, Rose shrinks the intercontinental divide separating the City of Light and the Big Apple, proving that the true essence of fine French dining can thrive in any time zone.", reviews: "★★★★★", location: "Manhattan")


puts "creating users..."

user1 = User.create(username: "Siobhan", password: "123")
user2 = User.create(username: "George", password: "123")
user3 = User.create(username: "Will", password: "123")
user4 = User.create(username: "YY", password: "123")
user5 = User.create(username: "Steven", password: "123")


puts "creating attended..."
Attend.create(user_id: 1, restaurant_id: 2, been_to: true)
Attend.create(user_id: 1, restaurant_id: 1, been_to: false)
Attend.create(user_id: 2, restaurant_id: 1, been_to: true)
Attend.create(user_id: 3, restaurant_id: 1, been_to: false)
Attend.create(user_id: 4, restaurant_id: 2, been_to: true)
Attend.create(user_id: 5, restaurant_id: 2, been_to: true)

puts "creating wishlist..."
Wishlist.create(user_id: 3, restaurant_id: 2, ranking: 1)
Wishlist.create(user_id: 4, restaurant_id: 1, ranking: 1)
Wishlist.create(user_id: 5, restaurant_id: 1, ranking:1) 
Wishlist.create(user_id: 3, restaurant_id: 2, ranking: 2)



puts "✅ Done seeding!"