class SalesController < ApplicationController

  def index
     @sales = Sale.all
  end
  
  def import
    # fileはtmpに自動で一時保存される
    Sale.import(params[:file])
    # redirect_to sales_url
  end
end
