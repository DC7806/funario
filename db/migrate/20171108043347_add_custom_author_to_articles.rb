class AddCustomAuthorToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :custom_author, :string
  end
end
