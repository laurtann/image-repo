class Photo < ActiveRecord::Base
  validates :category, presence: true
end
