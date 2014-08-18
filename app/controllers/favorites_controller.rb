class FavoritesController < ApplicationController

	# Show all the favorite eateries of the user.
	def index
		@favorites = Favorite.all
	end

	# Create a new favorite
	def new
		if signed_in?
			@eatery = Eatery.find(params[:format])
			@favorite = Favorite.new
			@eatery_id = params[:format]
			@user_id = current_user.id
		else
			redirect_to signin_path
		end
	end

	# Create the favorite
	def create
		@favorite = Favorite.new(favorite_params)

		if @favorite.save
			@favorites = Favorite.all
			redirect_to @favorite
		else
			render 'new'
		end
	end

	def show
		@favorite = Favorite.find(params[:id])
	end

	# Delete a favorite eatery.
	def destroy
		@favorite = Favorite.find(params[:id])
  		@favorite.destroy
  		redirect_to favorites_path
	end
	
	private
		def favorite_params
			params.require(:favorite).permit(:name, :description, :user_id, :eatery_id)
		end
end
