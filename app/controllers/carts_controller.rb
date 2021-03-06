class CartsController < ApplicationController
 before_action :set_cart, only: [:show, :edit, :update, :destroy]
  
  def index
    @cart = current_cart   
  end
  
  def show

  end
  
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = Lineitem.find(params[:id])
    @item.destroy
    redirect_to carts_path(current_cart)
  end

  private
   
    def set_cart
      @cart = current_cart
    end

    def cart_params
      params.require[:cart].permit!
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to sticker_url, notice: 'Invalid cart'
    end
end