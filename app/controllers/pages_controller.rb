class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home, :privacy, :estimator, :about, :support]

  def home
  	@featured_products = Product.where(:featured => true)
    @brands = Brand.all
  end

  def admin
  	@users = User.all
  	@messages = Message.order("created_at DESC")
  end

  def privacy
  end

  def estimator
  end

  def support
    @service_call = ServiceCall.new
    @supply_order = SupplyOrder.new
    @meter = Meter.new
  end
end
