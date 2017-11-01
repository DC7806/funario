class Article < ApplicationRecord
  #carrierwave uploader
  mount_uploader :image, ImageUploader

  #validate
  validates_presence_of :title, :image, :description, :author
  
end
