# super mario

require_relative 'mario'
require_relative 'yoshi'

mario = Mario.new
# red_yoshi = Yoshi.new('red')

require 'pry'
binding.pry

=begin
# interface for programmers
mario = Mario.new()
mario.jump() # methods
mario.duck()
mario.eat('mushroom')
mario.eat('star')

red_yoshi = Yoshi.new('red')
red_yoshi.run()

green_yoshi = Yoshi.new('green')
green_yoshi.run()

bowser = Bowser.new()
bowser.spit_fire()

troopa = Troopa.new()
=end



