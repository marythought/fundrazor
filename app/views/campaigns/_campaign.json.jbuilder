json.extract! campaign, :id, :name, :goal, :start_date, :end_date, :active, :video_link, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)