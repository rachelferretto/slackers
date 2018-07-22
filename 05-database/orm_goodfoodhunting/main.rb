     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/user'

enable :sessions

helpers do

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    # !!current_user
    if current_user # user object or nil
      return true
    else
      return false
    end
  end

end

get '/' do
  @dishes = Dish.all
  erb :index
end

get '/about' do
end

# getting the form
get '/dishes/new' do
  erb :new
end

# showing single dish by id
get '/dishes/:id' do
  @dish = Dish.find( params[:id] ) # find is always by id
  @comments = @dish.comments
  erb :dish_details
end

# create a dish
post '/dishes' do
  sql = "sdsdfsdf values ( $1, $2, $3)"
  run_sql(sql, [ @movie['Title'],  ])

  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect '/' # needs to a route - because its making a request
end

# delete a dish
delete '/dishes/:id' do
  dish = Dish.find( params[:id] )
  dish.destroy

  redirect '/'
end

get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

put '/dishes/:id' do
  
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect "/dishes/#{ params[:id] }"
end

post '/comments' do
  redirect '/login' unless logged_in?

  comment = Comment.new
  comment.content = params[:content]
  comment.dish_id = params[:dish_id]
  comment.save
  redirect "/dishes/#{ params[:dish_id] }"
end

get '/login' do
  erb :login
end

post '/session' do
  # grab email & password 
  # find the user by email
  user = User.find_by(email: params[:email])
  # authenticate user with password
  if user && user.authenticate(params[:password])
    # create new session
    session[:user_id] = user.id
    # redirect to secret page
    redirect '/'
  else
    erb :login
  end
end

delete '/session' do
  # delete the session
  session[:user_id] = nil
  # redirect to /login
  redirect '/login'
end





