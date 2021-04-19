json.extract! pricing_item, :id, :pricing_section_id, :position, :name, :price, :created_at, :updated_at
json.url pricing_item_url(pricing_item, format: :json)
