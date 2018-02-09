class Admin::Article < Article
  #validation
  validates_presence_of :title, :image, :description, :permalink

  validates_presence_of :author, unless: :custom_author?

  validates :permalink, uniqueness: true, format: {with: /\A\w[-|\w]*\z/}
  

  # prevent :save_author escaping from validation
  before_validation :save_author

  before_save :set_image_alt, :set_meta_description
  
  ## combo not working
  # validates :permalink, uniqueness: true, format: {with: /\A\w[-|\w]*\z/}, if: :permalink? 
  # after_create :set_permalink

  private
  # give permalink default value if blank
  # def set_permalink
  #   self.permalink = id if self.permalink.blank?
  # end
  
  #parameterize permalink
  # def set_permalink
  #   if self.permalink.blank?
  #     self.permalink = title.parameterize
  #   else
  #     self.permalink = permalink.parameterize
  #   end
  # end

  # set image alt deault value
  def set_image_alt
    self.image_alt = title if self.image_alt.blank?
  end
  # set meta_description default value
  def set_meta_description
    self.meta_description = description if self.meta_description.blank?
  end
  # save author either from select or manual input
  def save_author
    self.author = custom_author if self.author == "other" 
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