class CreatePortfolioItems < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolio_items do |t|
      t.references :portfolio_section, foreign_key: true
      t.integer :position
      t.references :portfolio_category, foreign_key: true
      t.string :client_name
      t.date :project_date
      t.string :project_url
      t.text :description

      t.timestamps
    end
  end
end
