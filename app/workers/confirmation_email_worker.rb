class ConfirmationEmailWorker 
	include Sidekiq::Worker


	sidekiq_options :retry => 3

	sidekiq_retries_exhausted do |msg|
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

		def perform
			DairyMailer.order_confirmation.deliver
		end

	
end