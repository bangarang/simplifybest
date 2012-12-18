class PagesController < ApplicationController
  before_filter :display_products

  def home
  end

  def about
  end

  def display_products
    @products = Product.all
  end
end
