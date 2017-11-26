class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :logo
      t.string :gtm_id
      t.string :ga_id
      t.string :facebook_id
      t.string :css_version

      t.timestamps
    end
  end
end
