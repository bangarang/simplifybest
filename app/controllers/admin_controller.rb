class AdminController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@users = User.all
  	@featured_pictures = FeaturedPicture.all
  end
end