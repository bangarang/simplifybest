class ProductPicturesController < ApplicationController
  before_filter :display_products, :display_categories
  
  def index
    @product_pictures = ProductPicture.all
  end

  def show
    @product_picture = ProductPicture.find(params[:id])
  end

  def new
    @product_picture = ProductPicture.new(:product_id => params[:product_id])
  end

  def edit
    @product_picture = ProductPicture.find(params[:id])
  end

  def create
    @product_picture = ProductPicture.new(params[:product_picture])

    if @product_picture.save
      flash[:notice] = "Successfully created Product Picture."
      redirect_to edit_product_path(@product_picture.product)
    else
      render :action => 'new'
    end
  end

  def update
    @product_picture = ProductPicture.find(params[:id])

    if @product_picture.update_attributes(params[:product_picture])
      flash[:notice] = "Successfully updated Product Picture."
      redirect_to @product_picture.product
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product_picture = ProductPicture.find(params[:id])
    @product_picture.destroy
    flash[:notice] = "Successfully destroyed Product Picture."
    redirect_to @product_picture.product
  end
private 
  def find_product
    @product = Product.find_by_slug!(params[:id])
  end

  def display_categories
    @categories = Category.all
  end

  def display_products
    @products = Product.all
  end
end
