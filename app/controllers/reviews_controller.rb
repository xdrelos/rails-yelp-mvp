class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      @pagy, @reviews = pagy(@restaurant.reviews, items:3)
      redirect_to restaurant_path(@restaurant)
    else
      @pagy, @reviews = pagy(@restaurant.reviews, items:3)
      render '/restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
