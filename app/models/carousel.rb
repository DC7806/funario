class Carousel < ApplicationRecord
  belongs_to :carouselable, polymorphic: true, optional: true
  mount_uploader :image, ImageUploader
  include RailsSortable::Model
  set_sortable :sort
end