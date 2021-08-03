class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @trip = Trip.find(params[:trip_id])
  end
end
