class AuthorColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :authors, :nick_name, :nickname
    add_column :authors, :summary, :text
  end
end
