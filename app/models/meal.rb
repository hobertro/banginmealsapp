class Meal < ApplicationRecord
  scope :active_meals, -> { where(status: "active") }
  scope :clean_meals, -> { active_meals.where(type: "CleanMeal") }
  scope :specialty_meals, -> { active_meals.where(type: "SpecialtyMeal") }
  
  validates :name, presence: true
  validates :description, presence: true
end
