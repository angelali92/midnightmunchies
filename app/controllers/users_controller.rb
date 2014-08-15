class UsersController < ApplicationController
	before_action :find_user, only: [:show, :edit, :update, :destroy]
	before_action :signed_in_user, except: [:new, :create]
	before_action :correct_user, except: [:new, :create]
	
	# def index
	# 	@users = User.all
	# end

	def show
		#@user = User.find(params[:id])
	end


	def new
		if current_user
			redirect_to current_user
		else 
			@user = User.new
		end
	end

	def create
		@user = User.new(user_params)

		if @user.save
			sign_in @user
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update    
		if @user.update_attributes(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		if @user.destroy
			redirect_to root_url
		else
			render 'show'
		end
	end

	private
		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end

		def find_user
			@user = User.find(params[:id])
		end

		def correct_user
			find_user
			redirect_to(current_user) unless current_user?(@user)
		end
end
