class Admin::Article < ApplicationRecord
  before_save :set_permalink, :set_cover_image_alt

  #carrierwave uploader
  mount_uploader :image, ArticleCoverImageUploader

  #validate
  validates_presence_of :title, :image, :description, :author

  private
  #parameterize permalink
  def set_permalink
    if self.permalink.nil? || self.permalink.blank?
      self.permalink = title.parameterize
    else
      self.permalink = permalink.parameterize
    end
  end
  # parameterize cover image alt
  def set_cover_image_alt
    self.cover_image_alt = cover_image_alt.parameterize unless (self.cover_image_alt.nil? || self.cover_image_alt.blank?)
  end
end
