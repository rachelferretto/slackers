require 'pry'

days_of_the_week = %w|mon tue wed thur fri sat sun|

# days_of_the_week.unshift(days_of_the_week.pop())

days_of_the_week = [days_of_the_week[0..4], days_of_the_week[5..7]]


weekdays = days_of_the_week.first

weekdays.sort()

binding.pry