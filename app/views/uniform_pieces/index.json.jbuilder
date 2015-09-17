json.array!(@uniform_pieces) do |uniform_piece|
  json.extract! uniform_piece, :id, :entry, :delivered, :delivery_reason, :returned, :return_reason, :clothing_size, :shoes_size, :color, :uniform_piece_kind_id, :uniform_piece_group_id, :employer_id
  json.url uniform_piece_url(uniform_piece, format: :json)
end
