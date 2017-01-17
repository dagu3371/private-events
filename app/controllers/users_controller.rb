class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Successfully logged in"
			
			if session[:id].nil?
				session[:id]=@user.id
				redirect_to @user
			else
				redirect_to @user
			end
			
			
		else
			render 'new'
		end

	end
	def show 
		@name = User.find(session[:id]).name
		@user = User.find(session[:id])
	end
	def index
		@name = User.find(session[:id]).name
		@user = User.all
	end
	private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
