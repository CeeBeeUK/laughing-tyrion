class CocktailsIngredient < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :measurement, :quantity, presence: true

  accepts_nested_attributes_for :ingredient, allow_destroy: true
end
