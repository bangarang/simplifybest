class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home, :privacy, :estimator]

  def home
  	@featured_products = Product.where(:featured => true)
  end

  def admin
  	@users = User.all
  	@messages = Message.order("created_at DESC")
  end

  def privacy
  end

  def estimator
  end
end
