class WelcomeController < ApplicationController

  def index
  			@stickers= Sticker.all
  				@banners= Banner.all
  			@cart= current_cart
       end

  
def about
		@stickers= Sticker.all
			@cart= current_cart
   end

end      
