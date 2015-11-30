class CartController < ApplicationController
  #before_action :authenticate_user!
	 def index
  @carts= Cart.all
  end

  def new
   @cart = Cart.new
  end

def create
@cart = Cart.new(cart_params)
if @cart.save
  redirect_to @cart
else
  render "new"
end
end

def show
  @cart = Cart.find(params[:id])
end

def edit
    @cart = Cart.find(params[:id])
  end

  def update
      @cart = Cart.find(params[:id])
      if @cart.update(cart_params)
        redirect_to @cart
      else
        render "edit"
      end
    end
def destroy
        @cart = Cart.find(params[:id])
        @cart.destroy
        redirect_to carts_path
      end

      def cart_params
        params.require(:cart).permit!
      end
    end