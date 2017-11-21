class CreateAdminSliders < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_sliders do |t|

      t.timestamps
    end
  end
end
