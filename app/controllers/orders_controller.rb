class OrdersController < ApplicationController
include CurrentCart

before_action :set_cart, only: [:new, :create]
before_action :set_order, only: [:show, :edit, :update, :destroy]

 def index
    @orders = Order.all
   end

def show
     @orders = Order.all
  end


def new
if @cart.line_items.empty?
redirect_to store_url, notice: "Your cart is empty"
return
end
@order = Order.new
end


end
