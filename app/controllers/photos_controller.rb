class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def search
    @photos = Photo.where("category ILIKE ?", "%" + params[:q] + "%")
  end
end
