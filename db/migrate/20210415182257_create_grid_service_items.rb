class CreateGridServiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :grid_service_items do |t|
      t.references :service_section, foreign_key: true
      t.integer :position
      t.string :header
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
