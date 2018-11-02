class Ingredient

  attr_accessor :recipeingredient, :allergen

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    winner = Ingredient.all.sort { |ingredient| ingredient.user }
    winner[0]
  else

  }

  end

  def recipes
    RecipeCard.all.select { |recipes| recipes.recipe == self}
  end

  def allergens#many to one
    Allergen.all.select { |allergen| allergen.ingredient == self}
  end


  def users#one to many through, returns ingredients for this recipe
    #for this individual user search through the ingredients
    self.users.map do |user|
#return an array of the ingredients for this user
      user.allergen
  end

end
