class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(:venue_id => params[:venue_id])
  end

  def create 
    @review = Review.new(review_params)
    @review.save
    redirect_to venue_path(@review.venue)
  end

  private
  def review_params
    params.require(:review).permit(:description,:user_id,:venue_id)
  end

end