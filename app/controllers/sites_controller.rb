class SitesController < ApplicationController
	def new
		
	end

 

def create
	
  @site = Site.new( site_params)
  
  @site.save

  redirect_to @site
end
 def show
    @site = Site.find(params[:id])

    
    # =begin@modelid=@site.model_id
    # @model=Model.find(@modelid)=end
  end
private
  def site_params
  	params.require(:site).permit(:site, :url, :name)
  end
end
