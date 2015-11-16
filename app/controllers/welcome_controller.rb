class WelcomeController < ApplicationController

  def index
  			@stickers= Sticker.all
  				@banners= Banner.all
  end
  
def about
		@stickers= Sticker.all
end

end
