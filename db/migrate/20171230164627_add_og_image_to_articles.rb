class AddOgImageToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :og_image, :string
  end
end
