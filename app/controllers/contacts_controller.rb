class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @name = params[:contacts][:name]
    @last_name = params[:contacts][:last_name]
    @email = params[:contacts][:email]
    @message = params[:contacts][:message]
    mailer
  end

  def sent
  end

  private

  def mailer
    mail = Mailtrap::Sending::Mail.new(
      from:
        {
          email: "mailtrap@www.remcojonk.me",
          name: "Mailtrap Test"
        },
      to: [
        {
          email: "remcojonk@hotmail.com"
        }
      ],
      subject: "New Contact request",
      text: "Name: #{@name} Last Name: #{@last_name} Email: #{@email} Message: #{@message}",
    )

    client = Mailtrap::Sending::Client.new(
      api_key: "********57e2",
      api_host: "https://send.api.mailtrap.io/"
    )

    response = client.send(mail)
    flash[:success] = "Your message has been sent successfully."
    redirect_to :root

  end
end
