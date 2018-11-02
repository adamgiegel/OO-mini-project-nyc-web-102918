class Recipe

  attr_accessor :recipeingredient

  @@all=[]

  def initialize(argument)
    @argument = argument
    @@all << self
  end


  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |recipe_card| recipe_card.recipe == self}
  end

  def users
    self.recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end


  def self.most_popular
    users.new=user
  end

  def recipe_ingredients#many to one
    RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self}
  end


  def ingredients#one to many through, returns ingredients for this recipe
    #for this individual recipe search through the recipe ingredients
    self.recipe_ingredients.map do |recipe_ingredient|
#return an array of the ingredients for this recipe
      recipe_ingredient.ingredient
  end


end #end of class
