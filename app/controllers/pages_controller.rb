class PagesController < ApplicationController
  def home
  	@featured_pictures = FeaturedPicture.all
  	@featured_products = Product.all( :limit => 4, :order => "updated_at DESC" )
  end

  def about
  end
end
