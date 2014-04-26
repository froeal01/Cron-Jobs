class ReviewsController < ApplicationController
	include ApplicationHelper

	def new
		@reviewable = find_reviewable
	end




end