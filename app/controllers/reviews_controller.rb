class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our simple form to create a new review
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    #create a new review with params
    @review = Review.new(review_params)
    #find the restaurant with the help of the params
    @restaurant = Restaurant.find(params[:restaurant_id])
    #assign a restaurant to the new review
    @review.restaurant = @restaurant
    #save the review
    if @review.save
      #redirect
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(@restaurant), notice: "Review eliminated!"
  end

  private

  def review_params
    params.require(:review).permit(:content,:stars)
  end
end
