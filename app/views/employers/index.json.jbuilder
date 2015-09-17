json.array!(@employers) do |employer|
  json.extract! employer, :id, :name, :avatar, :sex, :admission, :dismiss
  json.url employer_url(employer, format: :json)
end
