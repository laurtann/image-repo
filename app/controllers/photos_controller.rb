class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def search
    @photos = Photo.where("category ILIKE ?", "%" + params[:q] + "%")
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to [:photos], notice: 'Image added!'
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(
      :category,
      :image_url
    )
  end
end
