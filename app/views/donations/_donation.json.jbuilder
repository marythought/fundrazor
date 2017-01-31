json.extract! donation, :id, :solicitation_id, :amount, :user, :created_at, :updated_at
json.url donation_url(donation, format: :json)