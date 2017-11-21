class CreateSliders < ActiveRecord::Migration[5.1]
  def change
    create_table :sliders do |t|
      t.string :image
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
