class UsersController < ApplicationController
  def show
    @trips = current_user.trips
    user = User.find(params[:id])
    @belong_trip_id = current_user.trips.ids
        @trip = Trip.find([@belong_trip_id])
  
  end
end
