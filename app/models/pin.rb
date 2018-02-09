class Pin < ApplicationRecord
  # validation
  validates :month, presence: true

  #carrierwave uploader
  mount_uploader :image, PinUploader
  
  # [:all_results, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec ].each do |month|
  #   mount_uploader month, ImageUploader
  # end
  # mount_uploader :all_results, ImageUploader
  # mount_uploader :jan, ImageUploader
  # mount_uploader :feb, ImageUploader
  # mount_uploader :mar, ImageUploader
  # mount_uploader :apr, ImageUploader
  # mount_uploader :may, ImageUploader
  # mount_uploader :jun, ImageUploader
  # mount_uploader :jul, ImageUploader
  # mount_uploader :aug, ImageUploader
  # mount_uploader :sep, ImageUploader
  # mount_uploader :oct, ImageUploader
  # mount_uploader :nov, ImageUploader
  # mount_uploader :dec, ImageUploader
end
