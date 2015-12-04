class StoresController < ApplicationController
	
def index
	if params[:category].blank?
@stickers=Sticker.order("created_at ASC")
	@banners= Banner.all
	@contacts= Contact.all
	
else
@category_id = Category.find_by(:name=>params[:category]).id
@stickers = Sticker.where(category_id: @category_id).order("created_at DESC")
end
end
   def sticker_params
    params.require(:sticker).permit!
  end
end
