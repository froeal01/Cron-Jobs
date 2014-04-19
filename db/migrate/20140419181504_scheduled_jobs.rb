class ScheduledJobs < ActiveRecord::Migration
  def change
  	create_table(:scheduled_jobs) do |t|
  		t.string :job_status
  		t.timestamp
  	end
  end
end
