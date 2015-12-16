class CartsController < ApplicationController
 before_action :set_cart, only: [:show, :edit, :update, :destroy]
  
  def index
    @carts = Cart.all

  end
  
  def show
  end

  def edit_lineitem
    @lineitem = LineItem.find(params[:id])
        respond_to do |format|
      format.js
    end
  end
  
  
  def update
    @item = Lineitem.find(params[:id])
    if @item.update_attributes(cart_params)
      respond_to do |format|
        format.js
      end
    end
  end 

  def destroy
    @item = Lineitem.find(params[:id])
    @item.destroy
    redirect_to cart_path(current_cart)
  end

  private
   
    def set_cart
      @cart = Cart.find(current_cart)
    end

    def cart_params
      params.require[:cart].permit!
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to sticker_url, notice: 'Invalid cart'
    end
  end