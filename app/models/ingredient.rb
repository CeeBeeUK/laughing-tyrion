class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :cocktails_ingredients
  has_many :cocktails, through: :cocktails_ingredients
end
