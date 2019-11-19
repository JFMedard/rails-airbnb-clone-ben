class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.lama = Lama.find(params[:boat_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to lama_path(@lama)
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_lama
    @lama = Lama.find(params[:lama_id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end, :number_of_users, :driver_manager)
  end
end
