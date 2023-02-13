class TripsController < ApplicationController
  def index
  @trip = Trip.includes(:user)
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


  def show
    @trip = Trip.find(params[:id])
    end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
   @trip = Trip.find(params[:id])
   if @trip.update(trip_params)
      redirect_to trip_path(@trip.id)
    else
      render :edit
   end
  end


private

def trip_params
  params.require(:trip).permit(:item_name, :first_day, :last_day, user_ids: [])
end

end


