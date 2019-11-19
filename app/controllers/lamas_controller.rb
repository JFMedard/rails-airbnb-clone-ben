class LamasController < ApplicationController  def index
    @lamas = Lama.all
    authorise @lama
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
    authorise @lama
  end

  def show
    @lama = Lama.find(params[:id])
    @booking = Booking.new
    authorise @lama
  end

  def edit
    @lama = Lama.find(params[:id])
    authorise @lama
  end

  def update
    @lama = Lama.find(params[:id])
    @lama.update(lama_params)
    authorise @lama
    redirect_to lamas_path(@lamas)
  end

  def destroy
    @lama = Lama.find(params[:id])
    @lama.destroy
    authorise @lama
    redirect_to lamas_path(@lamas)
  end

  private

  def lama_params
    params.require(:lama).permit(:title, :description, :price, :capacity, :address)
  end
end
