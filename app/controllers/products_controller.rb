class ProductsController < ApplicationController
  before_filter :display_products, :display_categories

  before_filter :find_product, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @product = Product.new
  end

  def show
    @category = Category.all
  end

  def edit
  end

  def update
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice  => "Successfully updated Product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, :notice => "Successfully destroyed Product."
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to products_url, :notice => "Successfully created product."
    else
      render :action => 'new'
    end
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
