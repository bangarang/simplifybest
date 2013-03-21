class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home]

  def home
  	@featured_products = Product.where(:featured => true)
  end

  def admin
  	@users = User.all
  	@messages = Message.all
  end
end
