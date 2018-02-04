class AddSubtitleToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :subtitle, :string
    rename_column :articles, :cover_image_alt, :image_alt
  end
end
