class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @belong_trip_id = current_user.trips.ids
        @trip = Trip.find([@belong_trip_id])
    @trips = user.trips
  end
end
