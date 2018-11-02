class User

  attr_accessor :recipecard, :allergen, :name, :ingredient

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |recipe_card| recipe_card.user == self}
  end

  def recipes #Returns an array of recipes belonging to this user
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, recipe, self, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    ingredient.map(&:allegens)
  end

end
