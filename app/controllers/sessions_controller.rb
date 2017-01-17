class SessionsController < ApplicationController
	def destroy
		session[:id]= nil
		redirect_to root_path
	end
	def signed_in
		if session[:id].nil?
			redirect_to root_path
		else

		end
	end
end
