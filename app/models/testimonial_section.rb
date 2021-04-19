class TestimonialSection < ApplicationRecord
  belongs_to :section
  has_many :testimonial_items, dependent: :destroy
end
