class ConfirMationEmailWorker
	include SideKiq::Worker

		def perform(user_email)
			
end