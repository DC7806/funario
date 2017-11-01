class AddAuthorToAdminArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_articles, :author, :string
  end
end
