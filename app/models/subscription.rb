class Subscription < ActiveRecord::Base
	has_many :subscription_items
	has_many :items, through: :subscription_items
	has_many :reviews, as: :reviewable
end
