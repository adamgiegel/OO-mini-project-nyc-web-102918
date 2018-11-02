class Allergen

  attr_accessor :ingredient, :user

  @ingredient = []

  def initialize
    @ingredient << self
  end

end
