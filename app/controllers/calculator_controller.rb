class CalculatorController < ApplicationController
  def index
  end
  def calculate
    height = params[:height].to_f / 100.0  # convert cm to meters
    weight = params[:weight].to_f
    age = params[:age].to_i
    gender = params[:gender]
    goal_weight = params[:goal_weight].to_f
    time_frame = params[:time_frame].to_i
  
    bmi = (weight / (height * height)).round(2)
  
    # Simple calorie estimation (basic Mifflin-St Jeor)
    bmr = if gender == "male"
            10 * weight + 6.25 * (height * 100) - 5 * age + 5
          else
            10 * weight + 6.25 * (height * 100) - 5 * age - 161
          end
  
    deficit_per_day = ((weight - goal_weight) * 7700) / time_frame
    recommended_calories = (bmr - deficit_per_day).round
  
    @bmi = bmi
    @recommended_calories = recommended_calories
  
    render :index
  end
  
end
