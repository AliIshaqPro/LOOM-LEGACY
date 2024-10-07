class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        # redirect_to root_path, notice: 'Message sent successfully!'
      else
        render :new # Re-render the form in case of validation errors
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:name, :email, :website, :branding, :ecommerce, :seo, :message)
    end
  end
  