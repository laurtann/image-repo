class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def show
    @photo= Photo.find params[:id]
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to [:photos], notice: 'Image added!'
    else
      render :new
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to [:photos]
    else
      render 'edit'
    end
  end

  def search
    @photos = Photo.where("category ILIKE ?", "%" + params[:q] + "%")
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to '/'
  end

  def photo_params
    params.require(:photo).permit(
      :category,
      :image_url
    )
  end
end
