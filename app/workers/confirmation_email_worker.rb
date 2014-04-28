class ConfirmationEmailWorker 
	include Sidekiq::Worker




		def perform
			DairyMailer.order_confirmation.deliver
		end

	
end