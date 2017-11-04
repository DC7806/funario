class Article < ApplicationRecord
  #carrierwave uploader
  mount_uploader :image, ImageUploader

  #validate
  validates_presence_of :title, :image, :description

  #tagging
  acts_as_taggable_on :tags
  
end
