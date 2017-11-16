class AddOgImageToAdminMeta < ActiveRecord::Migration[5.1]
  def change
    add_column :meta, :og_image, :string
  end
end
