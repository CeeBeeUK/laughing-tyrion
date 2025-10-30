class CocktailsIngredient < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :measurement, :quantity, presence: true
end
