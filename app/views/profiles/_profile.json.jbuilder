json.extract! profile, :id, :institution_name, :description, :lending_policy, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
