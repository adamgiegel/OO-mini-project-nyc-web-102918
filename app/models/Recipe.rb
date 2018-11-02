class Recipe

  attr_accessor :recipecard, :recipeingredient

@@all=[]

  def initialize(argument)
    @argument = argument
    @@all << self
  end


  def self.all
    @@all
  end


  def self.most_popular
    users.new=user
  end

  def users

  end

  def ingredients

  end


end #end of class
