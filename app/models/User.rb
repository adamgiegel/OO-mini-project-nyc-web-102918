class User

  attr_accessor :recipecard, :allergen, :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select { |recipes| recipes.recipe == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, recipe, self, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    ingredient.map()
  end

  def patients
      appointments.map(&:patient)
    end
end
