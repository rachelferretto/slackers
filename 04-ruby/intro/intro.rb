# how to run ruby
# ruby intro.rb

puts(2 + 2)

# data types & structures
# booleans numbers strings

[] # array
{} # hash

# scopes

total = 12 # local

puts(total)

# flow control

# conditionals
student_count = 22

if student_count > 20
  puts('It is ' + ' a big')
  puts('class')
elsif student_count < 10
  puts('It is a small class')
else
  puts('It is a medium size class')
end

# loops

5.times do
  puts('hello')
  puts('how are you?')
end

count = 0
while count < 5 
  puts('hello')
  count += 1
end

languages = ['js', 'ruby', 'php']

# loop do
#   puts(languages[0])
# end

languages.each do |language|
  puts(language)
end

# debugging
require 'pry'
binding.pry







