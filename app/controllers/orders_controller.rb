class OrdersController < ApplicationController
  layout :layout?, only: [:index]
    before_filter :is_login?,only: [:index,:edit, :show]
def index
    @orders = Order.all
    
  end

   def new
    @cart = current_cart
    if @cart.lineitems.empty?
      redirect_to carts_path, :notice => "Your cart is empty"
      return
    end
 
    @order = Order.new
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end
       


  def create
    @order = Order.new(order_params)
UserMailer.welcome_email(@order).deliver
    if @order.save
       
      redirect_to root_path, notice: "The order #{@order.name} has been uploaded."
    else
      render "new"
    end
  end

 def update
  @order = Order.find(params[:id])
  if @order.update(order_params)
    redirect_to orders_path, notice: "The order #{@order.name} has been uploaded."
  else
    render "edit"
  end
 end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path, notice:  "The order #{@order.name} has been deleted."
  end

private
  def order_params
    params.require(:order).permit!
  end
end