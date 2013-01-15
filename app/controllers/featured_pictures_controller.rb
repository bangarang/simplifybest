class FeaturedPicturesController < ApplicationController
  def index
    @featured_pictures = FeaturedPicture.all
  end

  def show
    @featured_picture = FeaturedPicture.find(params[:id])
  end

  def new
    @featured_picture = FeaturedPicture.new
  end

  def edit
    @featured_picture = FeaturedPicture.find(params[:id])
  end

  def create
    @featured_picture = FeaturedPicture.new(params[:featured_picture])

    if @featured_picture.save
      flash[:notice] = "Successfully created Product Picture."
      redirect_to edit_featured_picture_path(@featured_picture)
    else
      render :action => 'new'
    end
  end

  def update
    @featured_picture = FeaturedPicture.find(params[:id])

    if @featured_picture.update_attributes(params[:featured_picture])
      flash[:notice] = "Successfully updated Product Picture."
      redirect_to @featured_picture
    else
      render :action => 'edit'
    end
  end

  def destroy
    @featured_picture = FeaturedPicture.find(params[:id])
    @featured_picture.destroy
    flash[:notice] = "Successfully destroyed Product Picture."
    redirect_to @featured_picture
  end
end