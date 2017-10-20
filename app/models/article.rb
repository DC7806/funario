class Article < ApplicationRecord
  def to_param
    permalink
  end
end