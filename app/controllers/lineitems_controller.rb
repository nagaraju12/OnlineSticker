class LineitemsController < ApplicationController
  before_action :set_lineitem, only: [:show, :edit, :update, :destroy]

    def index
    @lineitems = Lineitem.all
    @stickers = Sticker.all
  end

  
  def show
   
  end

  
  def new
    @lineitem = Lineitem.new
  end


  def edit
  end

  def create
sticker = Sticker.find(params[:sticker_id])
@cart = current_cart
#session[:cart_id] = @cart.id
@lineitem = current_cart.add_sticker(sticker.id)
respond_to do |format|
if @lineitem.save
format.html { redirect_to @lineitem.cart,notice: '' }
format.json { render action: 'show', status: :created, location: @lineitem }
format.js{ @current_item = @lineitem }
else
format.html { render action: 'new' }
format.json { render json: @lineitem.errors,status: :unprocessable_entity }
end
end
end

  
  def update
    respond_to do |format|
      if @lineitem.update(lineitem_params)
        format.html { redirect_to @lineitem, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lineitem }
      else
        format.html { render :edit }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @lineitem.destroy
    respond_to do |format|
      format.html { redirect_to lineitems_url, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end

    
    def lineitem_params
      params.require(:lineitem).permit!
    end
end
