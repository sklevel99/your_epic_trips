class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @review = Review.new
    @booking = Booking.find(params[:id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.trip = @trip
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
