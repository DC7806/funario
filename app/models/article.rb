class Article < ApplicationRecord
  #carrierwave uploader
  mount_uploader :image, ImageUploader
  mount_uploaders :slide_images, SlideImagesUploader

  #tagging
  acts_as_taggable_on :tags

  #search
  include PgSearch
  pg_search_scope :search, against: {:title => 'A', :content => 'B', :author => 'c'},
                  :using => {:tsearch => {:prefix => true, :dictionary => "english"}}  
  #realtion

  #number of articles from this month
  scope :this_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }
  #slider sortable
  include RailsSortable::Model
  set_sortable :sort          
end
