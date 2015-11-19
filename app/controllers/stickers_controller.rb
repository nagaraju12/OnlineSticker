class StickersController < ApplicationController

def index
	if params[:category].blank?
@stickers=Sticker.all.order("created_at ASC")
	@banners= Banner.all
	@contacts= Contact.all
else
@category_id = Category.find_by(:name=>params[:category]).id
@stickers = Sticker.where(category_id: @category_id).order("created_at DESC")
end
end
	def new
@sticker= Sticker.new
	1.times{@sticker.images.build}
	end

	def create
		@sticker= Sticker.new(sticker_params)
		1.times{@sticker.images.build} if @sticker.images.blank?
		if @sticker.save

			redirect_to @sticker, :notice => "Successfully created sticker."
			
		else
			render "new"
		end
	end

	def show
		@sticker= Sticker.find(params[:id])
	end

	def edit
		@sticker= Sticker.find(params[:id])
	end

	def destroy
		@sticker= Sticker.find(params[:id])
		@sticker.destroy
		redirect_to stickers_path
		
	end
def paid
		@stickers= Sticker.all
			@sticker= Sticker.find(params[:id])
end
	def update
		@sticker= Sticker.find(params[:id])
		if @sticker.update(sticker_params)
			redirect_to stickers_path
			
		else
			render "edit"
		end
	end

	def listing
     @stickers= Sticker.all
    respond_to do |format|
      format.js
    end
  end

private

def sticker_params
	params.require(:sticker).permit!
end

end
