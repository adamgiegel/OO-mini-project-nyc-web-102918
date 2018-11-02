class Ingredient

  attr_accessor :recipeingredient, :allergen

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
