     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_sql(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  return result
end

get '/' do
  @dishes = run_sql('SELECT * FROM dishes;')
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
  sql = "SELECT * FROM dishes WHERE id = #{ params[:id] };"
  result = run_sql(sql) # always return a fancy array
  @dish = result.first
  @comments = run_sql("SELECT * FROM comments WHERE dish_id = #{ params[:id] };")
  erb :dish_details
end

# create a dish
post '/dishes' do
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }', '#{ params[:image_url] }');"
  run_sql(sql)
  # get post redirect
  redirect '/' # needs to a route - because its making a request
end

# delete a dish
delete '/dishes/:id' do
  sql = "DELETE FROM dishes WHERE id = #{ params[:id] };"
  run_sql(sql)
  redirect '/'
end

get '/dishes/:id/edit' do
  result = run_sql("SELECT * FROM dishes WHERE id = #{ params[:id] }")
  @dish = result.first
  erb :edit
end

put '/dishes/:id' do
  # craft correct sql
  sql = "UPDATE dishes SET name = '#{params[:name]}', image_url = '#{params[:image_url]}' WHERE id = #{params[:id]};"
  # run the sql
  run_sql(sql)
  # redirect
  redirect "/dishes/#{ params[:id] }"
end

post '/comments' do
  sql = "INSERT INTO comments (content, dish_id) VALUES ('#{ params[:content] }', #{ params[:dish_id] });"
  run_sql(sql)
  redirect "/dishes/#{ params[:dish_id] }"
end





