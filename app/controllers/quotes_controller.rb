class QuotesController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    session[:return_to] = request.referer
    @quote = Quote.new(params[:quote])
    if @quote.save
      ServiceMailer.quote(@quote).deliver
      redirect_to session[:return_to], :notice => "Successfully Sent Quote"
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to admin_index_url, :notice => "Successfully Destroyed Quote."
  end
end
