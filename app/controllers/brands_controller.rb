class BrandsController < ApplicationController
  before_filter :find_brand, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show]
  def index
    @brands = Brand.all
  end

  def show
  end
  
  def new
    @brand = Brand.new
  end

  def edit
  end

  def create
    @brand = Brand.new(params[:brand])
    if @brand.save
      redirect_to categories_url, :notice => "Successfully created brand."
    else
      render :action => 'new'
    end
  end

  def update
    if @brand.update_attributes(params[:brand])
      redirect_to @brand, :notice  => "Successfully updated brand."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @brand.destroy
    redirect_to categories_url, :notice => "Successfully destroyed Product."
  end

private 
  def find_brand
    @brand = Brand.find_by_slug!(params[:id])
  end
end
