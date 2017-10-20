class DropArticle < ActiveRecord::Migration[5.1]
  def change
    drop_table :admin_articles
    drop_table :articles
  end
end
