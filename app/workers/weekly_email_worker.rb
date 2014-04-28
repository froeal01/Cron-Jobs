class WeeklyEmailWorker
	include Sidekiq::Worker



	def perform(user_email)
		DairyMailer.weekly_email(user_email).deliver
	end

end