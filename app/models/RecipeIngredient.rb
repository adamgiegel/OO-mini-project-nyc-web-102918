class RecipeIngredient
attr_accessor :ingredient, :recipe  #because it's
                        #the join between an ingredient and a recipe

@@ll=[]

  def initialize
    @@ll << self
  end

  def self.all
    @@all
  end


end
