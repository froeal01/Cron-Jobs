class Review < ActiveRecord::Base
	belongs_to :reviewable, polymorphic: true


	def self.find_all_by_reviewable_id(id)
		self.where(reviewable_id: id)
	end
end
