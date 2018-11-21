json.extract! user, :id, :name, :email, :experience_id, :created_at, :updated_at
json.url user_url(user, format: :json)
