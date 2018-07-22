require 'pry'

# old syntas for hash
# => hashrocket

# movie = {
#   'title' => 'sharknado',
#   'year' => 2000,
#   'stars' => ['shark']
# }

# symbol - :title, :year, :blah

# json - data format
# new syntax inspired by json
# [
#   {
#     title: 'sharknado',
#     year: 2000,
#     stars: ['shark']
#   },
#   {
#     title: 'rubber',
#     year: 3000
#   },
#   {
#     title: 'sharknado 6'
#     year: 1000
#   }
# ]

# axel - 4 
# megan - 4
# inder - 3
# kate - 4
# micael - 3

# students = ['inder', 'micael', 'megan']

# students.each do |student|
#   puts student
# end

# '2 dt'
# '3 inder micael'
# '4 megan axel'

db = {
  2 => ['dt'],
  3 => ['inder', 'micael'],
  4 => ['megan', 'axel']
}

# db is a collection
db.each do |score, students|
  puts "#{score} #{students.join(' ')}"
end

score = 5

puts "dfdsfdsf #{ 4 + 4 } sdfsdfsdf sdfsdf "

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}



even_numbers = users['Anil'][:favorite_numbers].select do |number|
  number.even?
end

# checkout arr

result_arr = users.values.map do |hash|
  hash[:favorite_numbers]
end.flatten.sort.uniq

binding.pry