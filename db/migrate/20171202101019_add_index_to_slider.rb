class AddIndexToSlider < ActiveRecord::Migration[5.1]
  def change
    add_column :sliders, :slider_index, :integer 
  end
end
