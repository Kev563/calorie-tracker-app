class FoodLogController < ApplicationController
  def index
    @food = Food.new
    @foods = Food.all
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foodlog_index_path, notice: "Food added!"
    else
      @foods = Food.all
      render :index
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to foodlog_index_path, notice: "Food updated!"
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foodlog_index_path, notice: "Food deleted."
  end

  private

  def food_params
    params.require(:food).permit(:name, :calories)
  end
end
