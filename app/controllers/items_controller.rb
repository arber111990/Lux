class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @user = current_user
    item_params[:price] = item_params[:price].to_i
    @item = Item.new(item_params)
    @item.user_id = @user.id
    @item.save
    redirect_to item_path(@item)
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item_params[:price] = item_params[:price].to_i
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:title, :description, :price, :location)
  end
end
