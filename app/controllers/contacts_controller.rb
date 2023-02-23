class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @name = params[:contacts][:name]
    @last_name = params[:contacts][:last_name]
    @email = params[:contacts][:email]
    @message = params[:contacts][:message]
    # # Perform any necessary actions with the form data
    # flash[:success] = "Your message has been sent successfully."
    # redirect_to :root
  end

  def sent
  end
end
