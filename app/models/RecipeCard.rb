class RecipeCard
attr_accessor :user, :recipe
attr_reader :rating, :date

  @@all=[]

    def initialize(date, recipe, user, rating)
      @date = date
      @rating = rating
      @user = user
      @recipe = recipe
      @@all << self
    end

    def self.all
      @@all

    end

end
