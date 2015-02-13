class BeveragesController < ApplicationController

	def index
	  @beverages = Beverage.all
	end

	def new
		@beverage = Beverage.new
	end

	def create
		@beverage = Beverage.create(params.require(:beverage).permit(:bev_type, :price, :quantity, :roast, :brew, :expiration_date))
		if @beverage.save
			redirect_to beverages_path
		else
			render 'new'
		end
	end
end
