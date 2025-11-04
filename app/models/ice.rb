class Ice < ApplicationRecord
  has_and_belongs_to_many :cocktails

  validates :name, presence: true, uniqueness: true
end
