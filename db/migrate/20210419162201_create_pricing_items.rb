class CreatePricingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :pricing_items do |t|
      t.references :pricing_section, foreign_key: true
      t.integer :position
      t.string :name
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
