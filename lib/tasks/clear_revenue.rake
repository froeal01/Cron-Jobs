namespace :clear do 
	desc "Rake task to clear Hourly Revenue from Database"
	task :revenue => :environment do 
		job_id	= ClearHourlyRevenueWorker.perform_async
			SidekiqStatusWorker.perform_async(job_id)
	end
end