class PagesController < ApplicationController
  def home
  	@featured_pictures = FeaturedPicture.all
  end

  def about
  end
end
