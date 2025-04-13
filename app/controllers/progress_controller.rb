class ProgressController < ApplicationController
  def index
    @progress_logs = ProgressLog.all.order(:created_at)
    @progress_log = ProgressLog.new
  end

  def create
    @progress_log = ProgressLog.new(progress_log_params)
    if @progress_log.save
      redirect_to progress_path, notice: "Progress added!"
    else
      @progress_logs = ProgressLog.all.order(:created_at) # needed again when rendering
      flash.now[:alert] = "Please fill in all fields correctly."
      render :index
    end
  end  
  private

  def progress_log_params
    params.require(:progress_log).permit(:calories_eaten, :goal_calories)
  end
end
