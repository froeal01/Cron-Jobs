namespace :clear do 
	desc "Rake task to clear Hourly Revenue from Database"
	task :revenue => :environment do 
		HourlyRevenue.all.each do |each_hour|
			each_hour.delete
		end
	end
end