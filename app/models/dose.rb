class Dose < ApplicationRecord
   # Validation
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  # Schema conections
  belongs_to :ingredient
  belongs_to :cocktail
end
