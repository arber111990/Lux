class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @items = Item.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @items = Item.all
    end
  end

  def altphoto
    "http://res.cloudinary.com/dbhqpuig0/image/upload/v1535041674/xgqq2az3wx08yu4zdva0.png"
  end

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @rating = 0
    item_params[:price] = item_params[:price].to_i
    @item = Item.new(item_params)
    @item.user = current_user
    # @item.user_id = @user.id
    # @item.photo ="https://images.unsplash.com/photo-1532054042869-c409cdfd5d3c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=015f7a3032ecf11eb2b6d6f70a8d164d&auto=format&fit=crop&w=1050&q=80"
    @item.rating = 1
    if @item.save!
      redirect_to item_path(@item)
    else
      render :new
    end
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
    params.require(:item).permit(:title, :description, :price, :location, :photo)
  end
end
