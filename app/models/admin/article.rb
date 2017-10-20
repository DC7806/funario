class Admin::Article < ApplicationRecord
  before_save :set_permalink

  private

  def set_permalink
    if self.permalink.nil? || self.permalink.blank?
      self.permalink = title.parameterize
    else
      self.permalink = permalink.parameterize
    end
  end
end
