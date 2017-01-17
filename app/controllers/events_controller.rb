class EventsController < ApplicationController
	def new
		@user = User.new
		@event = Event.new
		
		#@user = User.find(session[:id])
		@current_user ||= User.find_by(id: session[:id])
		@name = @current_user.name
		#@creator_id = @current_user.id
	end
	def create	

		@event = User.find(session[:id]).events.build(event_params)
		
		if @event.save
			flash[:success] = "Successfully posted"
			redirect_to posted_path
		else
			render 'new'
		end

		
	end
	def show
		@invite = Invite.new
		@event = Event.find(params[:id])
		@id = params[:id]
		@user_id = session[:id]
		
	end
	
	def index
		@event = Event.all

	end
	private
    def event_params
      params.require(:event).permit(:date, :description, :location)
      
    end
    

end
