class FavoritesController < ApplicationController

	# Show all the favorite eateries of the user.
	def index
		@favorites = Favorite.all
	end

	# Create a new favorite
	def new
		@favorite = Favorite.new
		@eatery_id = params[:format]
		@user_id = current_user.id
	end

	# Create the favorite
	def create
		@favorite = Favorite.new(favorite_params)

		if @favorite.save
			@favorites = Favorite.all
			redirect_to @favorite
		else
			redirect_to "new"
		end
	end

	def show
		@favorite = Favorite.find(params[:id])
	end

	# Delete a favorite eatery.
	def destroy
		@favorite = Eatery.find(params[:id])
  		@favorite.destroy
  		redirect_to favorites_path
	end
	
	private
		def favorite_params
			params.require(:favorite).permit(:name, :description, :user_id, :eatery_id)
		end
end
