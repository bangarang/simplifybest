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

  def about
    @brands = Brand.all
  end

  def printers
    @group = "Printer"
    @categories = Category.joins(:products).where(:products => {:printer => true})
    render "pages/groups"
  end 
  def workgroup
    @group = "Workgroup"
    @categories = Category.joins(:products).where(:products => {:workgroup => true})
    render "pages/groups"
  end 
  def smalloffice
    @group = "Small Office"
    @categories = Category.joins(:products).where(:products => {:smalloffice => true})
    render "pages/groups"
  end 
  def enterprise
    @group = "Enterprise"
    @categories = Category.joins(:products).where(:products => {:enterprise => true})
    render "pages/groups"
  end 
end
