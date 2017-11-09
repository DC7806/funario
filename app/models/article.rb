class Article < ApplicationRecord
  #carrierwave uploader
  mount_uploader :image, ImageUploader

  #tagging
  acts_as_taggable_on :tags

  #search
  include PgSearch
  pg_search_scope :search, against: {:title => 'A', :content => 'B', :author => 'c'},
                  :using => {:tsearch => {:prefix => true, :dictionary => "english"}}
  
  #realtion           
end
