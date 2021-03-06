class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @item_image = Item_image.all
  end

  def new
    @item = Item.new
    @item.item_images.build
    @item.build_trade
  end

  def create
    @item = Item.create(item_params)
    4.times { @item.item_images.build }
    redirect_to root_path
  end

  def show
    # binding.pry
    @item = Item.find(params[:id])
  end

  private
    def item_params
      params.require(:item).permit(:name, :body, :price, item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area]).merge(user_id: current_user.id)
    end
end
