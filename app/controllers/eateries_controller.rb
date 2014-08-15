class EateriesController < ApplicationController
	def index
		@eateries = Eatery.all
	end

	def show	
		@eatery = Eatery.find(params[:id])
	end


	def new
		@eatery = Eatery.new
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
  	@eatery.destroy
  	redirect_to eateries_path
   end

	private
		def eatery_params
			params.require(:eatery).permit(:name, :address, :lat, :long, :phone_num, :hours, :image_url, :website, :rating, :drive_thru)
end
end
