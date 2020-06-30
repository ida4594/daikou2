class ShopsController < ApplicationController

  def index
    @shops = Shop.all.includes(:sales)
 end

end
