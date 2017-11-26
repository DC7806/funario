class AddFacebookPixelToSystems < ActiveRecord::Migration[5.1]
  def change
    add_column :systems, :fb_pixel, :string
  end
end
