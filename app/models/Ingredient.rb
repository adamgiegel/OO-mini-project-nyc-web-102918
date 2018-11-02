class Ingredient

  attr_accessor :recipeingredient, :allergen

  @@all = []

  def initialize(argument)
    @argument = argument
    @@all << self
  end

  def self.all
    @@all
  end

end
