class MessagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to '/admin', :notice => "Successfully destroyed message."
  end
end
