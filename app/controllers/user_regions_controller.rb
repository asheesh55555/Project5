class UserRegionsController < ApplicationController


	def new
		
	end

 

  def create
  	
    @user_region = UserRegion.new( user_region_params)
    
    @user_region.save

    redirect_to @user_region
  end
 
 def show
    @user_region = UserRegion.find(params[:id])
  end

private
  def user_region_params
  	params.require(:user_region).permit(:user_id, :region_id)
  end

end
