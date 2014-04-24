class AddCompletedAtForScheduledJobs < ActiveRecord::Migration
  def change
  	add_column :scheduled_jobs, :completed_at, :datetime
  end
end
