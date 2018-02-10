class Metum < ApplicationRecord
  mount_uploader :og_image, ImageUploader
  
  def self.find_page(page_name)
    where(page_name: page_name).first
  end
end
