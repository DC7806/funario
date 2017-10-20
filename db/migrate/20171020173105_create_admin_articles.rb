class CreateAdminArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_articles do |t|
      t.string "title"
      t.string "meta_description"
      t.string "permalink"
      t.string "description"
      t.string "image"
      t.text "content"
      t.timestamps
    end
  end
end
