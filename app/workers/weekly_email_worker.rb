class WeeklyEmailWorker
	include Sidekiq::Worker

	sidekiq_options :retry => 0

	sidekiq_retries_exhausted do |msg|
      ScheduledJobs.create("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}",Time.now)
  end

	def perform(user_email)
		DairyMailer.weekly_email(user_email).deliver
	end

end