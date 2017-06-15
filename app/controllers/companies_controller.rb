class CompaniesController < ApplicationController
	
def index
    @companies = Company.all
  end
 def edit
  @company = Company.find(params[:id])
end
def update
  @company = Company.find(params[:id])
 
  if @company.update(company_params)
    redirect_to @company
  else
    render 'edit'
  end
end
def destroy
  @company = Company.find(params[:id])
  @company.destroy
 
  redirect_to companies_path
end












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
