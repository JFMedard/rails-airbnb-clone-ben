class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @lama = Lama.find(params[:lama_id])
  end

  def index
    @lama = Lama.find(params[:lama_id])
    @reviews = Review.find(@lama.id)
  end

  def create
    @lama = Lama.find(params[:lama_id])
    @reviews = Review.where(lama_id: @lama.id)
    @review = Review.new(review_params)
    @review.lama = @lama
    if @review.save
      respond_to do |format|
        format.html { redirect_to lama_path(@lama) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'lamas/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @lama = Lama.find(params[:lama_id])
    @review.destroy
    # authorize @lama
    redirect_to lama_path(@lama)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
