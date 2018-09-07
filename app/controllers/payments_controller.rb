class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for teddy #{@booking.id} for order #{@booking.id}",
    currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, state: 'paid')
    redirect_to items_path

    # rescue Stripe::CardError => e
    #   flash[:alert] = e.message
    #   redirect_to new_order_payment_path(@booking)
    # end
  end

  private

  def set_order
    @booking = current_user.bookings.find(params[:booking_id])
  end
end
