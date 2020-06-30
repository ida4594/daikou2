class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
  end

  def new    
  end

  def create
    Company.create(id: company_params[:id], name: company_params[:name], person: company_params[:person], post: company_params[:post], address1: company_params[:address1], address2: company_params[:address2], tel1: company_params[:tel1], tel2: company_params[:tel2], fax: company_params[:fax], mail: company_params[:mail], post_address: company_params[:post_address]) 
    redirect_to companies_path
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to companies_path
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.find(params[:id])
    company.update(name: company_params[:name], person: company_params[:person], post: company_params[:post], address1: company_params[:address1], address2: company_params[:address2], tel1: company_params[:tel1], tel2: company_params[:tel2], fax: company_params[:fax], mail: company_params[:mail], post_address: company_params[:post_address]) 
    redirect_to companies_path
  end
  
  private
    def company_params
      params.permit(:id, :name, :person, :post, :address1, :address2,:tel1, :tel2, :fax, :mail, :post_address)
    end

end
