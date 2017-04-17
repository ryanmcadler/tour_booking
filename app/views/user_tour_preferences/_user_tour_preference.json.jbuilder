json.extract! user_tour_preference, :id, :user_id, :referrer, :tour_date, :client_ip, :rating, :created_at, :updated_at
json.url user_tour_preference_url(user_tour_preference, format: :json)
