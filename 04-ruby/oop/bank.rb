# API or interface

class Account
  # todo soon

  def initialize(balance = 0) # instance method
    @balance = balance
    @name = ''
  end

  # setter
  def set_name(name)
    @name = name
  end

  # setter
  def name=(name) 
    @name = name
  end

  # getter
  def name()
    return @name
  end

  def deposit(amount) # instance method
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def balance() # instance method
    return @balance
  end

end

require 'pry'
binding.pry

=begin
a1 = Account.new(1000)
a1.deposit(15)
a1.deposit(12)
a1.balance() # 1027
a1.withdraw(7) # 1019 - withdrawal fee $1

a2 = Account.new
a2.set_name('savings')
a2.balance() # 0
a2.get_name() # 'savings'

require 'pry'
binding.pry
=end