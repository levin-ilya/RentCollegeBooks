json.array!(@books) do |book|
  json.extract! book, :isbn, :title, :image_url, :price
  json.url book_url(book, format: :json)
end
