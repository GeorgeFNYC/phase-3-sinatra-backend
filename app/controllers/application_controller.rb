class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/restaurants' do
    restaurant = Restaurant.all
    restaurant.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/restaurants/' do
    restaurants = Restaurant.all
    restaurants.to_json
  
  end

  get '/restaurants/:id' do
    restaurants = Restaurant.find(params[:id])
    restaurants.to_json
  
  end

  post '/restaurants' do
    restaurants = Restaurant.create(
      name: params[:name],
      image_url: params[:image_url],
      cuisine: params[:cuisine],
      price_point: params[:price_point],
      description: params[:description],
      reviews: params[:reviews],
      location: params[:location],
      address: params[:address]
      )
      restaurants.to_json
    end 
 

  #C- post exisiting rest into wishlist 
  #R - get from rest in wishlist
  #U- patch ranking of rest on wishlist
  # D - delete from wishlist

get '/wishlist' do
    wishlist = Wishlist.all
    wishlist.to_json(:include => :restaurant)
  end


get '/wishlist/:id' do
  wishlist= Wishlist.find(params[:id])
  wishlist.to_json(:include => :restaurant)

end

post '/wishlist' do
  user = User.find(params[:user_id])
  dup_array = user.wishlists.select {|item| item.restaurant_id ==  params[:restaurant_id]}
    if dup_array.length > 0
      {error: "Duplicate wishlist"}.to_json
    else
      wishlist = Wishlist.create(
        ranking: params[:ranking],
        user_id: params[:user_id],
        restaurant_id: params[:restaurant_id]
        )
      wishlist.to_json(:include => :restaurant)
    end
  end

patch '/wishlist/:id' do
  wishlist = Wishlist.find(params[:id])
    wishlist.update(ranking: params[:ranking])
    wishlist.to_json
  end

delete '/wishlist/:id' do
    wishlist = Wishlist.find(params[:id])
    wishlist.destroy
    wishlist.to_json



  end

get '/attend' do
    attend  = Attend.been_to
    attend.to_json(:include => :restaurant)
  end


get '/attend/:id' do
   attend = Attend.find(params[:id])
   attend.to_json(:include => :restaurant)
 
 end

post '/attend' do
  attend = Attend.create(
    been_to: params[:been_to],
    user_id: params[:user_id],
    restaurant_id: params[:restaurant_id]
    )
    attend.to_json
  end 

 patch '/attend/:id' do
  attend = Attend.find(params[:id])
    attend.update(been_to: params[:been_to])
    attend.to_json
  end

delete '/attend/:id' do
    attend = Attend.find(params[:id])
    attend.destroy
    attend.to_json
  end
  

  ##########


get '/eated' do
  eated = Eated.all
  eated.to_json(:include => :restaurant)
end


get '/eated/:id' do
 eated = Eated.find(params[:id])
 eated.to_json(:include => :restaurant)

end


post '/eated' do
  user = User.find(params[:user_id])
  dup_array = user.eateds.select {|item| item.restaurant_id ==  params[:restaurant_id]}
    if dup_array.length > 0
      {error: "Duplicate added"}.to_json
    else
      eated = Eated.create(
        user_id: params[:user_id],
        restaurant_id: params[:restaurant_id]
        )
        eated.to_json
    end
  end


delete '/eated/:id' do
  eated = Eated.find(params[:id])
  eated.destroy
  eated.to_json
end



end