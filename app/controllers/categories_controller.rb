class CategoriesController < ApplicationController

	def index
		@categories= Category.all
			@cart= current_cart
	end

	def new
		@category= Category.new
		1.times{@category.images.build}

	end

def create
	@category= Category.new(category_params)
	1.times{@category.images.build} if @category.images.blank?
if @category.save
	redirect_to categories_path
else
	render "new"
end
end

def show
	@category= Category.find(params[:id])
end

def edit
	@category= Category.find(params[:id])
end

def update
	@category= Category.find(params[:id])
	1.times{@category.images.build} if @category.images.blank?
	if @category.update(category_params)
		redirect_to categories_path
	else
		render "edit"
	end
end

def destroy
	@category= Category.find(params[:id])
	@category.destroy
	redirect_to categories_path
end

private

def category_params
	params.require(:category).permit!
end

end
