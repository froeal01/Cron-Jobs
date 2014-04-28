class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :async, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_orders
  has_many :orders, through: :user_orders

  


  def confirmation_email
  	job_id = DairyMailer.delay.order_confirmation
     SidekiqStatusWorker.perform_async(job_id)
  end

  def self.send_weekly_email
		User.all.each do |user|
  	   WeeklyEmailWorker.perform_async(user.email)
		end 
  end

end
