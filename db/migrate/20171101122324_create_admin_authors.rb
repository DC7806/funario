class CreateAdminAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_authors do |t|

      t.timestamps
    end
  end
end
