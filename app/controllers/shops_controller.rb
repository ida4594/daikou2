class ShopsController < ApplicationController

  def index
    @shops = Company.all
  end

  def new
  end

  def create
    Shop.create(shop_id: shop_params[:shop_id])
    redirect_to shops_path
  end
  
  def show
    @shops = Shop.all.includes(:sales)
  end

  private
    def shop_params
      params.permit(:shop_id)
    end
  
    @shops = Shop.all.includes(:sales)
end
