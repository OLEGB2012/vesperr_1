json.extract! faq_item, :id, :faq_section_id, :position, :question, :answer, :created_at, :updated_at
json.url faq_item_url(faq_item, format: :json)
