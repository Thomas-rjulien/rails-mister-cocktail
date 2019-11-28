class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end
