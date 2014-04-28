namespace :total do
	desc "Rake Task to get total order amounts"
	task :hourly => :environment do 
		job_id = TotalHourlyWorker.perform_async
			SidekiqStatusWorker.perform_async(job_id)
	end
end