class ItemsController < ApplicationController

	def index
		@items = Item.alphabitize #returning items oranized in asc order based on their name
	end

	def show
		@item = Item.find(params["id"])
		@reviews = Review.find_all_by_reviewable_id(params["id"])
	end

end