class SupplyOrdersController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @supply_orders = SupplyOrder.all
  end

  def show
    @supply_order = SupplyOrder.find(params[:id])
  end

  def new
    @supply_order = SupplyOrder.new
  end

  def create
    session[:return_to] = request.referer
    @supply_order = SupplyOrder.new(params[:supply_order])
    if @supply_order.save
      ServiceMailer.supply(@supply_order).deliver
      redirect_to session[:return_to], :notice => "Successfully Sent supply order"
    else
      redirect_to session[:return_to]
    end
  end
  
  def destroy
    @supply_order = SupplyOrder.find(params[:id])
    @supply_order.destroy
    redirect_to supply_orders_url, :notice => "Successfully destroyed Supply Order."
  end
end