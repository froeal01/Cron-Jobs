class WeeklyEmailWorker
	include Sidekiq::Worker

	sidekiq_options :retry => 3

	sidekiq_retries_exhausted do |msg|
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

	def perform(user_email)
		DairyMailer.weekly_email(user_email).deliver
	end

end