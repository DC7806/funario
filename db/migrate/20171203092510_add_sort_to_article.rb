class AddSortToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :sort, :integer
  end
end
