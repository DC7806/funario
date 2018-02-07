class RenameFacebookIdName < ActiveRecord::Migration[5.1]
  def change
    rename_column :systems, :facebook_id, :pinterest_id
    remove_column :systems, :fb_pixel, :logo
  end
end
