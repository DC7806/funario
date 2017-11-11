class AddSlideImagesToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :slide_images, :json
  end
end
