class CreateTeamSections < ActiveRecord::Migration[5.2]
  def change
    create_table :team_sections do |t|
      t.references :section, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
