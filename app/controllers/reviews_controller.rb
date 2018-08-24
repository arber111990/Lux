class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user = current_user
    @item = Item.find(params[:item_id])
  end

  def create
    @user = current_user
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.item = @item
    @review.save
    @item.rating = calculate_rating
    redirect_to item_path(@item)
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
  end

  def calculate_rating
    @rating = 0
    @item = Item.find(params[:item_id])
    @item.reviews.each do |review|
      @rating += review.rating
    end
    @rating = @rating / @item.reviews.count
    return @rating
  end

  def review_params
    params.require(:review).permit(:title, :description, :rating)
  end
end
