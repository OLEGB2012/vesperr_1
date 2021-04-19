class CreatePricingCapabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :pricing_capabilities do |t|
      t.references :pricing_item, foreign_key: true
      t.integer :position
      t.references :capability, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
