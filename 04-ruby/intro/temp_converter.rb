require 'pry'

def convert_temp(init_temp, unit)
  if unit == 'f'

    fahrenheit = init_temp.to_i
    celsius = (fahrenheit - 32) / 1.8
    kelvin = (fahrenheit + 459.67) / 1.8

    puts("fahrenheit: #{fahrenheit}")
    puts("to celsius: #{celsius}")
    puts("to kelvin: #{kelvin}")

  elsif unit == 'C'

    celsius = init_temp.to_i
    fahrenheit = celsius * 1.8 + 32
    kelvin = celsius + 273.15

    puts("fahrenheit: #{fahrenheit}")
    puts("to celsius: #{celsius}")
    puts("to kelvin: #{kelvin}")
  else
    puts("Invalid unit")
  end
end


loop do
  print 'type (f)ahrenheit or (C)elsius or (q)uit: '
  unit = gets.chomp

  if unit == 'q'
    break
  end

  print 'value: '
  init_temp = gets.chomp

  convert_temp(init_temp, unit)

end

puts 'goodbye'



# print 'convert a temperature? (y/n) '
# response = gets.chomp




# while response == 'y'
# while response == 'y'
#   print 'type (f)ahrenheit or (C)elsius or (q)uit: '
#   unit = gets.chomp
  
#   print 'value: '
#   init_temp = gets.chomp

#   convert_temp(init_temp, unit)

#   print 'convert a temperature? (y/n) '
#   response = gets.chomp
# end




