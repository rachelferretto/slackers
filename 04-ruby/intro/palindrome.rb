require 'pry'


# 'oxo'
# 'hannah'
# 'racecar'
# 'a  toyota!'
# 'evan'

puts 'type in a word: '
exhibit1 = gets.chomp

def add(num1, num2)
  num1 + num2
end


# predicate method
def palindrome?(str)
  cleaned_str = str.gsub(' ', '').downcase
  
  if cleaned_str == cleaned_str.reverse
    return true
  else
    return false
  end
end

# isPalindrome('hannah') # => true
puts palindrome?(exhibit1)

# put('just me')

# binding.pry