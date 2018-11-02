class RecipeIngredient
attr_accessor :ingredient, :recipe  #because it's
                        #the join between an ingredient and a recipe

@@all=[]

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredient
    Ingredient.new
  end

  def recipe
    Recipe.new
  end

end
