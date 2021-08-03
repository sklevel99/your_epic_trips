class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.trip = @trip
    # if @booking.save
    #   redirect_to
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :end_date)
  end
end
