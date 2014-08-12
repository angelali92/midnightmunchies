class EateriesController < ApplicationController
	def index
		@eateries = Eatery.all
	end

	def new
		@eatery = Eatery.new
	end

	def create
		@eatery = Eatery.new(eatery_params)

		if @eatery.save
			@eateries = Eatery.all
			render action: 'index'
		else
			render action: 'new'
		end
	end

	private
		def eatery_params
			params.require(:eatery).permit(:name, :address, :lat_long, :phone_num, :hours, :image_url, :website, :cost, :rating, :type_food, :drive_thru, :delivery, :market, :reviews, :pop_items)
end
end
