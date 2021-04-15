class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :slogan_basic
      t.string :slogan_additional
      t.string :get_started
      t.string :call_to_action
      t.string :address
      t.string :email
      t.string :phone
      t.string :twitter_url
      t.string :facebook_url
      t.string :instagram_url
      t.string :linkedin_url
      t.text :privacy_policy
      t.text :terms_of_use
      t.boolean :active

      t.timestamps
    end
  end
end
