class DashboardsController < ApplicationController
	
  def index
  	 	@stickers= Sticker.all
  	 	@contacts= Contact.all
  	 	@banners= Banner.all
  	 	#render :layout => false
  end

end
