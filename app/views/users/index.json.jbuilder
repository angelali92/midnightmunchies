json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :default_loc, :default_latlong
  json.url user_url(user, format: :json)
end
