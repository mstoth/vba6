json.extract! piece, :id, :title, :composer, :genre, :length, :publisher, :isbn, :created_at, :updated_at
json.url piece_url(piece, format: :json)
