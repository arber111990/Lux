class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @user = current_user
    @item = Item.find(params[:item_id])
    booking_params[:days] = booking_params[:days].to_i
    @booking = Booking.new(booking_params)
    @booking.confirmed = false
    @booking.user_id = @user.id
    @booking.item_id = @item.id
    @booking.price = @booking.days * @item.price
    @booking.save
    redirect_to item_path(@item)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @item = Item.find(params[:item_id])
    @booking.delete
    redirect_to item_path(@item)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :days)
  end
end
