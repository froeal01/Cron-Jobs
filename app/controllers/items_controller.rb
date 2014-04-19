class ItemsController < ApplicationController

	def index
		@items = Item.alphabitize #returning items oranized in asc order based on their name
	end

	def show
		@item = Item.find(params["id"])
	end

end