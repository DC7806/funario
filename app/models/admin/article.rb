class Admin::Article < Article
  #validation
  validates_presence_of :title, :image, :description

  validates_presence_of :author, unless: :custom_author?

  validates :permalink, uniqueness: true, format: {with: /\A\w[-|\w]*\z/}, if: :permalink?

  # prevent :save_author escaping from validation
  before_validation :save_author

  before_save :set_permalink, :set_cover_image_alt
  
  private
  #parameterize permalink
  def set_permalink
    self.permalink = id if self.permalink.blank?
  end
  # def set_permalink
  #   if self.permalink.blank?
  #     self.permalink = title.parameterize
  #   else
  #     self.permalink = permalink.parameterize
  #   end
  # end

  # parameterize cover image alt
  def set_cover_image_alt
    self.cover_image_alt = cover_image_alt.parameterize unless (self.cover_image_alt.blank?)
  end
  # save author either from select or manual input
  def save_author
    if self.author.blank? || self.author == "other"
      self.author = custom_author
    end 
  end
  
end

## validation :unless usage explained ##
# If you set a validator's :unless option to be a symbol, Rails will look for an instance method of that name, 
# invoke that method on the instance that's being validated -- at validation time -- 
# and only perform the validation if the method returns false.

# ActiveRecord automatically creates question mark methods for each of your model's attributes, 
# so the existence of a home_phone column in your model's table causes Rails to create a handy home_phone? method. 
# This method returns true if and only if home_phone is present (i.e. not blank). If the home_phone attribute is nil 
# or an empty string or a bunch of white space, home_phone? will return false.

# Reference
# http://api.rubyonrails.org/classes/ActiveRecord/Callbacks.html