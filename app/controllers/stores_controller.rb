class StoresController < ApplicationController
	def index
  	@stickers = Sticker.order(:name)
  end

   def sticker_params
    params.require(:sticker).permit!
  end
end
