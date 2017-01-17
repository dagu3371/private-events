class InvitesController < ApplicationController
	def new
	end
	def create
		@user = User.find(session[:id])
		@invite = @user.invites.build(invite_params)
		if @invite.save
			flash[:success] = "Successfully attended"
			redirect_to root_path
		else
			render 'new'
		end
		
	end
	def show
	end
	def destroy
		@id = params[:id]
		Invite.where("attended_event_id= ?", params[:id]).destroy_all
		redirect_to root_path
	end
	private
	def invite_params
	    params.require(:invite).permit(:attended_event_id)
	end
end
