class BannersController < ApplicationController
before_filter :is_login?
	def index
		@banners= Banner.all
	end

	def new
		@banner= Banner.new
			1.times{@banner.images.build}
	end

	def create
		@banner= Banner.new(banner_params)
			1.times{@banner.images.build} if @banner.images.blank?
		if @banner.save
			redirect_to @banner
		else
			render "new"
		end
	end

	def show
		@banner= Banner.find(params[:id])
	end

	def edit
		@banner= Banner.find(params[:id])
	end

	def update
		@banner= Banner.find(params[:id])
			1.times{@banner.images.build} if @banner.images.blank?
		if @banner.update(banner_params)
			redirect_to banners_path
		else
			render "edit"
		end
	end

	def destroy
		@banner= Banner.find(params[:id])
		@banner.destroy
		redirect_to banners_path
	end

	private

	def banner_params
		params.require(:banner).permit!
	end

end
