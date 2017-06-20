class UserRolesController < ApplicationController

def index
    @user_roles = UserRole.all
  end
 def edit
  @user_role = UserRole.find(params[:id])
end
def update
  @user_role = UserRole.find(params[:id])
 
  if @user_role.update(user_role_params)
    redirect_to @user_role
  else
    render 'edit'
  end
end
def destroy
  @user_role = UserRole.find(params[:id])
  @user_role.destroy
 
  redirect_to user_roles_path
end



	def new
		@user_role=User.new
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
