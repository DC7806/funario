class CreateAdminSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_systems do |t|

      t.timestamps
    end
  end
end
