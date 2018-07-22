class Mario # factory or blueprint for making marios

  def initialize # special method thats runs when you make a new mario
    @size = 'small' # instance variable lives as long as the instance lives
    @suit = 'normal'
    @invincible = false
    puts "made new mario"
  end

  def jump()
    puts "jumping"
  end

  def eat(food)
    if food == 'mushroom'
      @size = 'big'
    end
  end

end