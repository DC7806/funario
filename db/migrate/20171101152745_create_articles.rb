class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string "title"
      t.string "author"
      t.string "meta_description"
      t.string "permalink"
      t.string "description"
      t.string "image"
      t.text "content"
      t.string "cover_image_alt"
      t.timestamps
    end
  end
end
