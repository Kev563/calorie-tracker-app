class ProgressLog < ApplicationRecord
  validates :calories_eaten, :goal_calories, presence: true
  validates :calories_eaten, :goal_calories, numericality: { only_integer: true, greater_than: 0 }
end
