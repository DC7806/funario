class Admin::System < System
  validates :site_name, presence: true
end
