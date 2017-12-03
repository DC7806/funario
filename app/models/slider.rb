class Slider < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :image
  include RailsSortable::Model
  set_sortable :sort 
end
