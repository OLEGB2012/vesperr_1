json.extract! portfolio_item, :id, :portfolio_section_id, :position, :portfolio_category_id, :client_name, :project_date, :project_url, :description, :created_at, :updated_at
json.url portfolio_item_url(portfolio_item, format: :json)
