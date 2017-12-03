class RemoveIndexFromSlider < ActiveRecord::Migration[5.1]
  def change
    remove_column :sliders, :slider_index
  end
end
