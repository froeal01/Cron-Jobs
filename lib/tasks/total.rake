namespace :total do
	desc "Rake Task to get total order amounts"
	task :hourly => :environment do 
		TotalHourlyWorker.perform_async
	end
end