class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def create

		if params[:company_id]
			@company = Company.find(params[:company_id])
	    	@parent = @company.companies.create(params[:company].permit(:name))
	    	redirect_to company_path(@company)
	    else
	    	@company = Company.new(company_params)

			if @company.save			
				redirect_to @company
			else
				render 'new'
			end
		end		
		
	end

	def show
		@company = Company.find(params[:id])
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
	  @company = Company.find(params[:id])
	 
	  if @company.update(params[:company].permit(:name))
	    redirect_to @company
	  else
	    render 'edit'
	  end
	end

	def index
		@companies = Company.all
	end
	
	private
	def company_params
		params.require(:company).permit(:name)
	end
end
