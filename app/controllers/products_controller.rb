class ProductsController < ApplicationController
  before_filter :find_product, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @current = []
    @legacy = []

    for i in @categories
      for v in i.products 
        if v.new
          @current << i
          break
        end
      end
    end
    for b in @categories
      for v in b.products 
        if !v.new
          @legacy << b
          break
        end
      end
    end
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
    unless (@product.configuration.empty? && @product.speed.empty? && @product.warmup.empty? && @product.firstout.empty? && @product.resolution.empty? && @product.memory.empty? && @product.hdd.empty? && @product.duplex.empty? && @product.stdoutput.empty? && @product.electrical.empty? && @product.dimensions.empty? && @product.weight.empty? && @product.maxdutycycle.empty?)
      @mainspecs = true
    end

    unless (@product.stdsources.empty? && @product.optsources.empty? && @product.papercap.empty? && @product.papersize.empty? && @product.paperweight.empty? && @product.inputmaterials.empty?)
      @paperspecs = true
    end


    unless (@product.stdcontroller.empty? && @product.emulations.empty? && @product.fonts.empty? && @product.windows.empty? && @product.novell.empty? && @product.macos.empty? && @product.unixos.empty? && @product.interfaces.empty? && @product.protocols.empty? && @product.drivers.empty? && @product.utilities.empty?)
      @printspecs = true
    end

    unless (@product.scanresolutions.empty? && @product.fileformats.empty? && @product.pdfextension.empty? && @product.scanspeed.empty? && @product.connectivity.empty? && @product.scanfunction.empty? && @product.originalsize.empty? && @product.scandriver.empty?)
      @scanspecs = true
    end

    unless (!@mainspecs && !@paperspecs && !@printspecs && !@scanspecs)
      @specs = true
    end
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
      redirect_to @product, :notice => "Successfully created product."
    else
      render :action => 'new'
    end
  end

  def featured
    Product.update_all({new: true}, {id: params[:product_ids]})
    Product.where("id NOT IN(?)", params[:product_ids]).update_all(new: false)
    redirect_to admin_url
  end

private 
  def find_product
    @product = Product.find_by_slug!(params[:id])
  end
end
