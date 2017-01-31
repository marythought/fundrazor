json.extract! social_share, :id, :solicitation_id, :type, :created_at, :updated_at
json.url social_share_url(social_share, format: :json)