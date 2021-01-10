class Category < ActiveRecord::Base
  has_many :photo_categories
end
