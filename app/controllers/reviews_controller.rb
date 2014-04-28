class ReviewsController < ApplicationController
	include ApplicationHelper

	def new
		@reviewable = find_reviewable
	end

	def create
		@reviewable = find_reviewable
		review = @reviewable.reviews.build(review_params)
			if review.save
				flash[:notice] = 'Thanks for the review'
				redirect_to item_path(params["item_id"])
			else
				render :new
			end
	end


private 

	def review_params
		params.require(:review).permit(:comment, :rating, :reviewable_id, :reviewable_type)
	end


end