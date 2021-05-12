class AddAttributesToPricingItem < ActiveRecord::Migration[5.2]
  def change
    add_column :pricing_items, :recommended, :boolean
    add_column :pricing_items, :data_aos, :string
    add_column :pricing_items, :data_aos_delay, :string
  end
end
