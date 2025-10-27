class Cocktail < ApplicationRecord
  has_and_belongs_to_many :tools
  has_many :cocktails_ingredients
  has_many :ingredients, through: :cocktails_ingredients

  validates :name, presence: true, uniqueness: true
end
