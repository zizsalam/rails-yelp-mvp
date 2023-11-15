class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:id])
    @review = @restaurant.reviews.build
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
