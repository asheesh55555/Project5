class UserRegionsController < ApplicationController


  def index
    @user_regions = UserRegion.all
  end
 def edit
  @user_region = UserRegion.find(params[:id])
end
def update
  @user_region = UserRegion.find(params[:id])
 
  if @user_region.update(user_region_params)
    redirect_to @user_region
  else
    render 'edit'
  end
end
def destroy
  @user_region = UserRegion.find(params[:id])
  @user_region.destroy
 
  redirect_to user_regions_path
end



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
