json.extract! team_item, :id, :team_section_id, :position, :name, :occupation, :twitter_url, :facebook_url, :instagram_url, :linkedin_url, :created_at, :updated_at
json.url team_item_url(team_item, format: :json)
