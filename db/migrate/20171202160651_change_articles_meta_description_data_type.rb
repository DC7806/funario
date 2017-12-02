class ChangeArticlesMetaDescriptionDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :articles, :meta_description, :text
  end
end
