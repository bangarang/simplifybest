class MessagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url, :notice => "Successfully destroyed message."
  end
end