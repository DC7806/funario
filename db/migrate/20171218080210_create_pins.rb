class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :all_results
      t.string :jan
      t.string :feb
      t.string :mar
      t.string :apr
      t.string :may
      t.string :jun
      t.string :jul
      t.string :aug
      t.string :sep
      t.string :oct
      t.string :nov
      t.string :dec

      t.timestamps
    end
  end
end
