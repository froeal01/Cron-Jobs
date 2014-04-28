class SidekiqStatusWorker
	include Sidekiq::Worker

	REQUIRED_AMOUNT	= 1

	sidekiq_options :retry => 3
	
	sidekiq_retries_exhausted do |msg|
     ScheduledJob.failed("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}",Time.now)
  end

	def perform(job_id)
		job_status = "pending"
		elapsed_time = 0
		until(job_status == "complete" || job_status == "failed" || elapsed_time > 15) do
			job_status = Sidekiq::Status::status(job_id).to_s
			sleep REQUIRED_AMOUNT
			elapsed_time = elapsed_time + REQUIRED_AMOUNT
		end
		ScheduledJob.record(job_status,job_id)
	end




end