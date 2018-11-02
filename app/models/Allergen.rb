class Allergen

  attr_accessor :ingredient, :user

  # @ingredient = []

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
    # @ingredient << self
  end

end
