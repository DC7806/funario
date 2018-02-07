class Slider < ApplicationRecord
  
  before_save :default_cta

  mount_uploader :image, ImageUploader

  validates :image, presence: true

  include RailsSortable::Model
  set_sortable :sort

  private
  def default_cta
    self.cta = "ENTER" if self.cta.blank?
  end 
end
