class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @lama = Lama.find(params[:lama_id])
  end

  def create
    @lama = Lama.find(params[:lama_id])
    @review = Review.new(review_params)
    @review.lama = @lama
    if @review.save
      redirect_to lama_path(@lama)
    else
      render "lamas/show"
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
