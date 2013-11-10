class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(:venue_id => params[:venue_id])
    #@review.user_id = sessions[:user_id]
  end

  def create 
    @review = current_user.reviews.create(review_params)
    if @review.persisted?
      flash[:notice] = "Your review was created!"
      redirect_to venue_path(@review.venue)
    else
      flash[:notice] = "There was a problem. Try again."
      redirect_to new_review_path
    end
  end

  private
  def review_params
    params.require(:review).permit(:description,:user_id,:venue_id,:stars)
  end

end