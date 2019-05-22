class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def show
  # end

  # def destroy
  # end
  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
