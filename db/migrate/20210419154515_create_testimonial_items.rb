class CreateTestimonialItems < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonial_items do |t|
      t.references :testimonial_section, foreign_key: true
      t.integer :position
      t.string :author
      t.string :occupation
      t.text :content

      t.timestamps
    end
  end
end
