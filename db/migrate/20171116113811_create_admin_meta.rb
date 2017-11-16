class CreateAdminMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_meta do |t|

      t.timestamps
    end
  end
end
