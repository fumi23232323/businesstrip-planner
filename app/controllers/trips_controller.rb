class TripsController < ApplicationController
  def index
<<<<<<< Updated upstream
  @ptrip = Trip.all
=======
  @trip = Trip.includes(:user)
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======

  def show
    @trip = Trip.find(params[:id])
   

    end
>>>>>>> Stashed changes
  


private

def trip_params
  params.require(:trip).permit(:item_name, :first_day, :last_day, user_ids: [])
end

end
