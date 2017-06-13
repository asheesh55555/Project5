class CompaniesController < ApplicationController
	def new
		
	end

 

def create
	
  @company = Company.new( company_params)
  
  @company.save

  redirect_to @company
end
 def show
    @company = Company.find(params[:id])

    
    # =begin@modelid=@company.model_id
    # @model=Model.find(@modelid)=end
  end
private
  def company_params
  	params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date, :active)
  end
end
