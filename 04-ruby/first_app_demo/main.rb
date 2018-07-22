require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# http request - query string - anything that comes after a question mark
# query string - key value pair
# url http://dt.com:4567/about?name=dt  
# params is magical variable that contains your query string pair 
# different methods - get

get '/' do
  '<h1>welcome to my home page</h1><a href="/crappy_calc">calculator</a>'
end

get '/about' do
  '<h1>its me. alex</h1>'
end

# localhost:4567/hello?name=slackers
get '/hello' do
  return "<h2>YO #{ params['name'] }</h2>"
end

# if the client request this path - and provide query string num1 & num2
# localhost:4567/crappy_calc?num1=5&num2=6
# respond with the sum of the 2 numbers

# route
get '/crappy_calc' do
  erb(:calc)
end

get '/sum' do
  @total = params[:num1].to_f + params[:num2].to_f
  erb(:sum)
end 

# route
get '/will_it_rain_tomorrow' do
  responses = [ 
    "It is certain", 
    "It is decidedly so", 
    "Without a doubt", 
    "Yes definitely",
    "You may rely on it",
    "As I see it yes",
    "Most likely",
    "Outlook good",
    "Yes", "Signs point to yes", 
    "Reply hazy try again", 
    "Ask again later",
    "Better not tell you now", 
    "Cannot predict now", 
    "Concentrate and ask again",
    "Don't count on it", 
    "My reply is no", 
    "My sources say no",
    "Outlook not so good", 
    "Very doubtful"
  ]

  "<h1>#{ responses.sample }</h1>"
end

