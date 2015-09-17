json.array!(@uniform_piece_groups) do |uniform_piece_group|
  json.extract! uniform_piece_group, :id, :name
  json.url uniform_piece_group_url(uniform_piece_group, format: :json)
end
