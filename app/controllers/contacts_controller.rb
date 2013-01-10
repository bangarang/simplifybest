class ContactsController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    session[:return_to] = request.referer
    @contact = Contact.new(params[:contact])
    if @contact.save
      ServiceMailer.contact(@contact).deliver
      redirect_to session[:return_to], :notice => "Successfully Sent Contact"
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to messages_url, :notice => "Successfully Destroyed Contact."
  end
end
