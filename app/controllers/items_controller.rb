class ItemsController < ApplicationController

  def index
    @items = Item.all
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.js
        format.json { render json: @item, status: :created, location: @item }
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:value)
  end

end
