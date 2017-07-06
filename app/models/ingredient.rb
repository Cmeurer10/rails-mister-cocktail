class Ingredient < ApplicationRecord
  has_many :doses#, dependent: :destroy
  has_many :cocktails, through: :ingredients
  validates :name, presence: true, uniqueness: true
end
