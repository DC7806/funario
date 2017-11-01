class DropAdminArticleTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :admin_articles
  end
end
