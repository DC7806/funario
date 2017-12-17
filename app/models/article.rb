class Article < ApplicationRecord

  #association
  has_many :carousels, as: :carouselable, dependent: :destroy
  accepts_nested_attributes_for :carousels, allow_destroy: true
  
  #carrierwave uploader
  mount_uploader :image, ImageUploader
  mount_uploaders :slide_images, SlideImagesUploader

  #tagging
  acts_as_taggable_on :tags

  #search
  include PgSearch
  pg_search_scope :search, against: {:title => 'A', :content => 'B', :author => 'c'},
                  :using => {:tsearch => {:prefix => true, :dictionary => "english"}}  
  
  #number of articles from this month
  scope :this_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }

end
