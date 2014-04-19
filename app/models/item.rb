class Item < ActiveRecord::Base
	has_many :order_items
	has_many :orders, through: :order_items
	has_many :subscription_items
	has_many :subscriptions, through: :subscription_items
	has_many :reviews, as: :reviewable
end
