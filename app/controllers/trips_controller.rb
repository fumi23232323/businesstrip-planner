class TripsController < ApplicationController
  def index
  @ptrip = Trip.all
  end

  def new
  @trip = Trip.new
  end

  def create
  @trip = Trip.new(trip_params)
  if @trip.save
  
    redirect_to root_path
    else
      render :new 
    end
  end
  


private

def trip_params
  params.require(:trip).permit(:item_name, :first_day, :last_day, user_ids: [])
end

end
