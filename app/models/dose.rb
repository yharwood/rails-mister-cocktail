class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false, uniqueness: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :cocktail
  belongs_to :ingredient
end
