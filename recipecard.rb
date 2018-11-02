class RecipeCard
attr_accessor :rating
attr_reader :date

  @@all=[]

    def initialize()
      @date=date.today
      @@all << self

    end

    def self.all
      @@all

    end

    def date
      @date

    end

    def rating
      @rating
    end
end 
