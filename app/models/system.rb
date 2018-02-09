class System < ApplicationRecord
  #carrierwave uploader
  mount_uploader :logo, FaviconUploader
end
