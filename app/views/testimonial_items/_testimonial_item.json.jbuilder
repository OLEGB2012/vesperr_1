json.extract! testimonial_item, :id, :testimonial_section_id, :position, :author, :occupation, :content, :created_at, :updated_at
json.url testimonial_item_url(testimonial_item, format: :json)
