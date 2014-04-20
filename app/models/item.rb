class Item < ActiveRecord::Base
	has_many :sub_orders
	has_many :subscription_items
	has_many :subscriptions, through: :subscription_items
	has_many :reviews, as: :reviewable

	def self.alphabitize
		Item.order(name: :asc)
	end


end