class CreateFaqItems < ActiveRecord::Migration[5.2]
  def change
    create_table :faq_items do |t|
      t.references :faq_section, foreign_key: true
      t.integer :position
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
