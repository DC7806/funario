class CreateMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :meta do |t|
      t.string :page_name
      t.string :title
      t.string :meta_description

      t.timestamps
    end
  end
end
