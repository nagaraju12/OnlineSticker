class DashboardsController < ApplicationController
	before_filter :is_login?
  def index
  	 	@stickers= Sticker.all
  	 	@contacts= Contact.all
  	 	@banners= Banner.all
  	 	#render :layout => false
  end

end
