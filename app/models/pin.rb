class Pin < ApplicationRecord
  # validation
  validates :month, presence: true

  #carrierwave uploader
  mount_uploader :image, PinUploader
  
  # [:all_results, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec ].each do |month|
  #   mount_uploader month, ImageUploader
  # end

end
