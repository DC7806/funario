class ChangeMetaDescriptionFormatInMetum < ActiveRecord::Migration[5.1]
  def change
    change_column :meta, :meta_description, :text
  end
end
