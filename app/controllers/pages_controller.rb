class PagesController < ApplicationController

def new
		
	end

 

def create
	
  @page = Page.new( page_params)
  
  @page.save

  redirect_to @page
end
 def show
    @page = Page.find(params[:id])

    
    # =begin@modelid=@page.model_id
    # @model=Model.find(@modelid)=end
  end
private
  def page_params
  	params.require(:page).permit(:title, :site_id, :description)
  end
end


	
