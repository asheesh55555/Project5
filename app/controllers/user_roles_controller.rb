class UserRolesController < ApplicationController
	def new
		
	end

 

  def create
  	
    @user_role = UserRole.new( user_role_params)
    
    @user_role.save

    redirect_to @user_role
  end
 
 def show
    @user_role = UserRole.find(params[:id])
  end

private
  def user_role_params
  	params.require(:user_role).permit(:role_name)
  end

  
end
