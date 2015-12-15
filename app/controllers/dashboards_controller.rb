class DashboardsController < ApplicationController
	layout :layout?
	before_filter :is_login?
  def index
  	 	@stickers= Sticker.all
  	 	@contacts= Contact.all
  	 	@banners= Banner.all
  	 
  end

end
