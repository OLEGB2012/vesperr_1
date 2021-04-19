class CreateHorizonServiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :horizon_service_items do |t|
      t.references :service_section, foreign_key: true
      t.integer :position
      t.string :header
      t.string :description
      t.string :icon_class
      t.boolean :active

      t.timestamps
    end
  end
end
