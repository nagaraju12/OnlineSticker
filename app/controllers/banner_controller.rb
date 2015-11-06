class BannerController < ApplicationController
	before_filter :is_signin?, :is_admin?
  def index
    @banner = Banner.all
  end
  
  def new
    @banner = Banner.new
  end
  
  def create
    @banner = Banner.new(params[:banner])
    if @banner.save
      redirect_to banner_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @banner = Banner.find(params[:id])
  end
  
  def update
    @banner = Banner.find(params[:id])
    if @banner.update_attributes(params[:banner])
      redirect_to banner_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy
    redirect_to banner_path
  end
end
end
