class AddJobIdToScheduledJobs < ActiveRecord::Migration
  def change
  	add_column :scheduled_jobs, :job_id, :string
  end
end
