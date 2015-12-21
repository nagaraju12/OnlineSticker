class WelcomeController < ApplicationController

  def index
  			@stickers= Sticker.all
  				@banners= Banner.all
  				  @lineitems = Lineitem.all
  				    @carts = Cart.all
       end

  
def about
		@stickers= Sticker.all
   end

end      
