class ProductsController < ApplicationController
  before_filter :find_product, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  def index
  end

  def new
    @product = Product.new  
  end

  def duplicate
    @product = Product.new  
    @old_product = Product.find_by_slug(params[:slug])
    @product = @old_product.dup
    for accessory in @old_product.accessories
      @temp = accessory.dup
      @product.accessories.new(:name => @temp.name, :description => @temp.description )
    end

    for supply_item in @old_product.supply_items
      @temp = supply_item.dup
      @product.supply_items.new(:name => @temp.name, :description => @temp.description )
    end
    
    render :action => 'new'
  end

  def show
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
end
