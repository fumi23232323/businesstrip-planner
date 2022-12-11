class SchedulesController < ApplicationController
  def index 
  end

  def new
  @schedule = Schedule.new
  end
 
  def create
  @schedule = Schedule.new(schedule_params)
  if @schedule.save
  
    redirect_to trip_path(params[:id])
    else
      render :new 
    end
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:schedule_date, :start_time, :ending_time, :plan, :place, :url_link, :icon, :image)
  end

end
