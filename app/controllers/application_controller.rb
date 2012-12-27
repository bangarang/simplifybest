class ApplicationController < ActionController::Base
  protect_from_forgery
    rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  before_filter :display_products, :display_categories
  
  def send_mail
    ServiceMailer.meters(params).deliver
    flash[:notice] = "Email was sent successfully."
    redirect_to root_path
  end
 
private 
  def find_product
    @product = Product.find_by_slug!(params[:id])
  end

  def display_product_pictures
    @product_pictures = ProductPicture.all
  end

  def display_categories
    @categories = Category.all
  end

  def display_products
    @products = Product.all
  end
end
