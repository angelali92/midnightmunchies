class EateriesController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@eateries = Eatery.search(params[:search]).order(sort_column + " " + sort_direction)
		@asc = "http://www.clipartbest.com/cliparts/nTX/EGB/nTXEGBLTB.png"
		@desc = "http://upload.wikimedia.org/wikipedia/en/e/e0/Black_Down_Arrow.png"
	end
 
	def show	
		@eatery = Eatery.find(params[:id])
	end


	def new	
		if signed_in?
			@eatery = Eatery.new
		else
			redirect_to signin_path
		end
	end

	def create
		@eatery = Eatery.new(eatery_params)

		if @eatery.save
			@eateries = Eatery.all
			redirect_to @eatery
		else
			redirect_to "new"
		end
	end

	def edit
		@eatery = Eatery.find(params[:id])
	end

	def update
		@eatery = Eatery.find(params[:id])
		if @eatery.update_attributes(eatery_params)
			redirect_to @eatery
		else
			render "edit"
		end
	end

	def destroy
		@eatery = Eatery.find(params[:id])
		@eatery.favorites.each {|f| f.destroy }
		@eatery.destroy
		redirect_to eateries_path
	end

	private
		def eatery_params
			params.require(:eatery).permit(:name, :address, :phone_num, :image_url, :website, :rating, :drive_thru)
		end

		def sort_column
			Eatery.column_names.include?(params[:sort]) ? params[:sort] : "name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

end
