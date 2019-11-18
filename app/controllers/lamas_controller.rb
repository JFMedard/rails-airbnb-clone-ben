class LamasController < ApplicationController
  def index
    @lamas = Lama.all
  end

  def new
    @lama = Lama.new
  end

  def create
    @lama = Lama.new(lama_params)
    if @lama.save
      redirect_to lamas_path(@lamas)
    else
      render 'new'
    end
  end

  def show
    @lama = Lama.find(params[:id])
    # @booking = Booking.new
  end

  def edit
    @lama = Lama.find(params[:id])
  end

  def update
    @lama = Lama.find(params[:id])
    @lama.update(lama_params)
    redirect_to lamas_path(@lamas)
  end

  def destroy
    @lama = Lama.find(params[:id])
    @lama.destroy
    redirect_to lamas_path(@lamas)
  end

  private
  def lama_params
    params.require(:lama).permit(:title, :description, :price, :capacity)
  end
end
