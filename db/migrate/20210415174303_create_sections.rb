class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.references :setting, foreign_key: true
      t.integer :position
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
