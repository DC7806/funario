class CreateCarousels < ActiveRecord::Migration[5.1]
  def change
    create_table :carousels do |t|
      t.string :image
      t.integer :sort
      t.references :carouselable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
