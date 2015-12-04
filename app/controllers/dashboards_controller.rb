class DashboardsController < ApplicationController
	before_filter :layout?
  def index
  	 	@stickers= Sticker.all
  	 	@contacts= Contact.all
  	 	@banners= Banner.all
  	 	#render :layout => false
  	 render :layout => "admin"
  end

end
