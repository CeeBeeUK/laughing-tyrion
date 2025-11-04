class Cocktail < ApplicationRecord
  has_many :cocktails_ingredients
  has_many :ingredients, through: :cocktails_ingredients
  belongs_to :glass
  belongs_to :ice, optional: true

  has_rich_text :recipe

  validates :name, presence: true, uniqueness: true

  enum :rating, { red: 0, amber: 1, green: 2 }

  accepts_nested_attributes_for :cocktails_ingredients, allow_destroy: true
  accepts_nested_attributes_for :ingredients, allow_destroy: true
end
