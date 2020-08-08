class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :show]

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
    redirect_to shops_path
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end

  def edit
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to shops_path
  end

  def show
  end

  private

    def shop_params
      params.require(:shop).permit(:name, :aicon_image, :detail, :tel, :address, :url)
    end

    def set_shop
      @shop = Shop.find(params[:id])
    end

end
