class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @booking = Booking.new
    @bookings       = Booking.where(trip_id: @trip.id)
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def destroy
    @trip = Trip.find(trip[:id])
    @trip.destroy
    redirect_to trips_path
  end

  def edit
    @trip = trip.find(params[:id])
  end

  def update
    @trip = trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to trips_path
  end

  private

  def trip_params

    params.require(:trip).permit(:title, :category, :details, :total_participant, :price)
  end
end

   params.require(:trip).permit(:title, :category, :details, :total_participant, :price)
  end
  
end
