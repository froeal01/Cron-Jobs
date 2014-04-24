class WeeklyEmailWorker
	include Sidekiq::Worker

	sidekiq_options :retry => 0

	sidekiq_retries_exhausted do |msg|
      ScheduledJobs.new("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}",Time.now).log_failure
  end

	def perform(user_email)
		DairyMailer.weekly_email(user_email).deliver
	end

end