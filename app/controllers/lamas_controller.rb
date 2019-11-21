class LamasController < ApplicationController
  def index
    #@lamas = Lama.search(params[:search])
    # @lamas = Lama.where.not(latitude: nil, longitude: nil)
    @lamas = Lama.geocoded

    @markers = @lamas.map do |lama|
      {
        lat: lama.latitude,
        lng: lama.longitude,
        infowindow: render_to_string(partial: "infowindow", locals: { lama: lama })
      }
    end
  end

  def new
    @lama = Lama.new
    # authorize @lama
  end

  def create
    @lama = Lama.new(lama_params)
    @user = current_user
    @lama.user = @user
    if @lama.save
      redirect_to lama_path(@lama)
    else
      render 'new'
    end
    # authorize @lama
  end

  def show
    @lama = Lama.find(params[:id])
    @booking = Booking.new
    # authorize @lama

  end

  def edit
    @lama = Lama.find(params[:id])
    # authorize @lama
  end

  def update
    @lama = Lama.find(params[:id])
    @lama.update(lama_params)
    # authorize @lama
    redirect_to lamas_path(@lamas)
  end

  def destroy
    @lama = Lama.find(params[:id])
    @lama.destroy
    # authorize @lama
    redirect_to lamas_path(@lamas)
  end

  private

  def lama_params
    params.require(:lama).permit(:title, :description, :price, :capacity, :address, :search, photos: [])
  end
end
