class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
  end

  def create
    Shop.create(shop_id: shop_params[:shop_id], name: shop_params[:name], rate: shop_params[:rate], company_id: shop_params[:company_id])
    redirect_to shops_path
  end
  
  def show
    @shops = Shop.all.includes(:sales)
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(name: shop_params[:name], rate: shop_params[:rate], company_id: shop_params[:company_id])
    redirect_to shops_path
  end

  private
    def shop_params
      params.permit(:shop_id, :name, :rate, :company_id)
    end
  
end
