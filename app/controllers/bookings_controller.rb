class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @lamas = Lama.all
    # @bookings = current_user.bookings
  end

  def show
    # authorize @booking
    set_booking
  end

  def new
    @lama = Lama.find(params[:lama_id])
    @booking = Booking.new
    @user = current_user
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @lama = Lama.find(params[:lama_id])
    @user = current_user
    @status = "pending"
    # authorize @booking
    @booking.user = @user
    @booking.lama = @lama
    @booking.status = @status
    if @booking.save
      redirect_to user_booking_path(@user, @booking)
    else
      render "lamas/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path
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
