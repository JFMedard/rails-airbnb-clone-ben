class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    # @bookings = current_user.bookings
  end

  def show
    # authorize @booking
    set_booking
  end

  def new
    @lama = Lama.find(params[:lama_id])
    @booking = Booking.new
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @lama = Lama.find(params[:lama_id])
    @user = current_user
    # authorize @booking
    @booking.user = @user
    @booking.lama = @lama
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "lamas/show"
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