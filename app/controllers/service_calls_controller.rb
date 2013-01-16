class ServiceCallsController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @service_calls = ServiceCall.all
  end

  def show
    @service_call = ServiceCall.find(params[:id])
  end

  def new
    @service_call = ServiceCall.new
  end

  def create
    session[:return_to] = request.referer
    @service_call = ServiceCall.new(params[:service_call])
    if @service_call.save
      ServiceMailer.service(@service_call).deliver
      redirect_to session[:return_to], :success => "Successfully Sent Service Call"
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @service_call = ServiceCall.find(params[:id])
    @service_call.destroy
    redirect_to admin_index_url, :notice => "Successfully Closed Service Call."
  end
end