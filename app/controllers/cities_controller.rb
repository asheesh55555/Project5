class CitiesController < ApplicationController
	def new
		
	end

 

  def create
  	
    @city = City.new( city_params)
    
    @city.save

    redirect_to @city
  end
 
 def show
    @city = City.find(params[:id])
  end

private
  def city_params
  	params.require(:city).permit(:city_name)
  end
end
