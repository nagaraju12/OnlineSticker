class ContactsController < ApplicationController
  before_filter :is_login?,only: [:index]
layout :layout?, only: [:index,:show,:edit,:destroy]

  def index
     @contacts = Contact.all
  
        if params[:search]
       @contacts = Contact.search(params[:search]).order("created_at DESC")
    else
       @contacts = Contact.all.order('created_at DESC')
    end
end

def new
		@contact= Contact.new
			@cart= current_cart
	end
def create
		@contact= Contact.new(contact_params)
		UserMailer.contact_email(@contact).deliver
		if @contact.save
			redirect_to root_path
		else
			render "new"
		end
	end
def show
		@contact= Contact.find(params[:id])
	end

def edit
		@contact= Contact.find(params[:id])
	end

def update
		@contact= Contact.find(params[:id])
		if @contact.update(contact_params)
			redirect_to contacts_path
		else
			render "edit"
		end
	end
def destroy
		@contact= Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end

private

def contact_params
		params.require(:contact).permit!
	end

end
