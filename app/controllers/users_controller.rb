class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end


	def new
	    @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			@users = User.all
			render action: 'show'
		else
			render action: 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	    if @user.update_attributes(user_params)
	      render action: 'show'
	    else
	      render 'edit'
	    end
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to action: 'index'
		else
			render action: 'show'
		end
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end
end
