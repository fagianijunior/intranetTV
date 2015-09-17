json.array!(@uniform_piece_kinds) do |uniform_piece_kind|
  json.extract! uniform_piece_kind, :id, :name
  json.url uniform_piece_kind_url(uniform_piece_kind, format: :json)
end
