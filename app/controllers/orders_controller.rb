class OrdersController < ApplicationController
  layout :layout?, only: [:index]
  
def index
    @orders = Order.all
    
  end

  def new
    @order = Order.new
       
  end

  def create
    @order = Order.new(order_params)
UserMailer.welcome_email(@order).deliver
    if @order.save
       
      redirect_to orders_path, notice: "The order #{@order.name} has been uploaded."
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
#redirect_to resumes_path, notice: "The order #{@order.name} has been uploaded.
