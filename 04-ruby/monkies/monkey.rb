
class Monkey

  def initialize(name, species)
    @name = name
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def introduce
    "Hi my name is #{ @name }. I am a #{ @species }. I had #{ @foods_eaten.join(', ') } for brunch"
  end

  def to_s
    "sdf"
  end

end



