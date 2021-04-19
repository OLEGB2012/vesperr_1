class CreateFeatureItems < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_items do |t|
      t.references :feature_section, foreign_key: true
      t.integer :position
      t.string :header
      t.string :icon_class
      t.string :style_color

      t.timestamps
    end
  end
end
