class CreateAboutUsSections < ActiveRecord::Migration[5.2]
  def change
    create_table :about_us_sections do |t|
      t.references :section, foreign_key: true
      t.text :left_side
      t.text :right_side
      t.integer :happy_clients_counter
      t.integer :projects_counter
      t.integer :years_counter
      t.integer :awards_counter
      t.string :happy_clients_text
      t.string :projects_text
      t.string :years_text
      t.string :awards_text
      t.string :happy_clients_class
      t.string :projects_class
      t.string :years_class
      t.string :awards_class

      t.timestamps
    end
  end
end
