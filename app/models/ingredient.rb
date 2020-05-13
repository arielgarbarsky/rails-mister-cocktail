class Ingredient < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true

  # Schema conections
  has_many :doses
end
