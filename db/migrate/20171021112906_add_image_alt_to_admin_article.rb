class AddImageAltToAdminArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_articles, :cover_image_alt, :string
  end
end
