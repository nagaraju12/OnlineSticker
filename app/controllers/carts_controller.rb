class CartsController < ApplicationController
 before_action :set_cart, only: [:show, :edit, :update, :destroy]
rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  
  def index
    @carts = Cart.all

  end

  
  def show

  end

  
  def new
    @cart = Cart.new
  end

  def edit

  end

  
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
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

  @cart.destroy

    redirect_to @cart
  end

  private
   
    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require[:cart].permit(:sticker_id, :cart_id)
    end
    def invalid_cart
 logger.error "Attempt to access invalid cart #{params[:id]}"
  redirect_to sticker_url, notice: 'Invalid cart'
end
end
