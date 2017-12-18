class CreateAdminPins < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_pins do |t|

      t.timestamps
    end
  end
end
