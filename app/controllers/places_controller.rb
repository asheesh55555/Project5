class PlacesController < ApplicationController

def index
    @places = Place.all
  end
 def edit
  @place = Place.find(params[:id])
end
def update
  @place = Place.find(params[:id])
 
  if @place.update(place_params)
    redirect_to @place
  else
    render 'edit'
  end
end
def destroy
  @place = Place.find(params[:id])
  @place.destroy
 
  redirect_to places_path
end





	def new
		
	end

 

  def create
  	
    @place = Place.new( place_params)
    
    @place.save

    redirect_to @place
  end
 
 def show
    @place = Place.find(params[:id])
  end

private
  def place_params
  	params.require(:place).permit(:place_name, :company_id)
  end
end
