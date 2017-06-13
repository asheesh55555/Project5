class RegionsController < ApplicationController

	def new
		
	end

 

  def create
  	
    @region = Region.new( region_params)
    
    @region.save

    redirect_to @region
  end
 
 def show
    @region = Region.find(params[:id])
  end

private
  def region_params
  	params.require(:region).permit(:region_name)
  end
end
