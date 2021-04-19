class CreateTestimonialSections < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonial_sections do |t|
      t.references :section, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
