class CreateTeamItems < ActiveRecord::Migration[5.2]
  def change
    create_table :team_items do |t|
      t.references :team_section, foreign_key: true
      t.integer :position
      t.string :name
      t.string :occupation
      t.string :twitter_url
      t.string :facebook_url
      t.string :instagram_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
