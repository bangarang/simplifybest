class MetersController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @meters = Meter.all
  end

  def show
    @meter = Meter.find(params[:id])
  end

  def new
    @meter = Meter.new
  end

  def create
    @meter = Meter.new(params[:meter])
    if @meter.save
      ServiceMailer.meter(@meter).deliver
      redirect_to root_url, :notice => "Successfully Sent Meter"
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @meter = Meter.find(params[:id])
    @meter.destroy
    redirect_to messages_url, :notice => "Successfully destroyed meter."
  end
end