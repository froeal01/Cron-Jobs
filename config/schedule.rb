# require '../app/models/scheduled_job.rb'
# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, { :standard => "../log/cron_log.log", :error => "../log/cron_log_error.log"}



every :sunday, at: '11pm' do
  runner "User.send_weekly_email", :environment => :development
end

every :Monday, at: "12am" do 
	rake "log:clear"
end

every 1.hour do 
	rake "total:hourly"
end

every :Monday, at: "9am" do 
	command "rm -rf ./temp/cache"
end

# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
