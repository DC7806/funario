class RenamePinColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :pins, :all_results 
    remove_column :pins, :jan 
    remove_column :pins, :feb 
    remove_column :pins, :mar 
    remove_column :pins, :apr 
    remove_column :pins, :may 
    remove_column :pins, :jun 
    remove_column :pins, :jul 
    remove_column :pins, :aug 
    remove_column :pins, :sep 
    remove_column :pins, :oct 
    remove_column :pins, :nov
    remove_column :pins, :dec 
    add_column :pins, :month, :string
    add_column :pins, :image, :string
    add_column :pins, :order, :string
  end
end
