class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	end

	def new
	    @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			@users = User.all
			render action: 'index'
		else
			render action: 'new'
		end
	end

	def edit
	end

	def destroy
	    @user = User.find(params[:id])
	    @user.destroy
	    redirect_to 'index'
	end

	def update
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end
end
