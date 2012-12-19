class PagesController < ApplicationController
  before_filter :display_products, :display_categories

  def home
  end

  def about
  end

private 
  def display_categories
    @categories = Category.all
  end
  def display_products
    @products = Product.all
  end
end
