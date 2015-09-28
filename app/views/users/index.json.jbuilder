json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_digest, :employer_id
  json.url user_url(user, format: :json)
end
