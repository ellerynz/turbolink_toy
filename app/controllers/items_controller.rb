class ItemsController < ApplicationController

  before_action :find_item, only: [:destroy]

  def index
    @items = Item.all
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.js
      end
    end
  end

  def destroy
    @item.destroy

    respond_to do |format|
      if @item.destroyed?
        format.js
      end
    end
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:value)
  end

end
