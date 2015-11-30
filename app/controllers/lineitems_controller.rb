class LineitemsController < ApplicationController
	before_action :set_cart, only: [:create]
 before_action :set_line_item, only: [:show, :edit, :update, :destroy]
 def index
 	@lineitems= Lineitem.all
  end

  def new
   @lineitem = Lineitem.new
	end

def create
@lineitem = Lineitem.new(lineitem_params)
if @lineitem.save
	redirect_to @lineitem
else
	render "new"
end
end

def show
	@lineitem = Lineitem.find(params[:id])
end

def edit
		@lineitem = Lineitem.find(params[:id])
	end

	def update
			@lineitem = Lineitem.find(params[:id])
			if @lineitem.update(lineitem_params)
				redirect_to @lineitem
			else
				render "edit"
			end
		end

		def destroy
				@lineitem = Lineitem.find(params[:id])
				@lineitem.destroy
				redirect_to lineitems_path
			end

			def lineitem_params
				params.require(:lineitem).permit!
			end
		end
				
	
