class AddCtaToSliders < ActiveRecord::Migration[5.1]
  def change
    add_column :sliders, :cta, :string
  end
end
