class Photo < ActiveRecord::Base
  belongs_to: user
  has_many: photo_category

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true

end