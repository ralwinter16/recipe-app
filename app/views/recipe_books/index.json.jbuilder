json.array!(@recipe_books) do |recipe_book|
  json.extract! recipe_book, :id, :title, :instructions, :ingredients, :rating, :user_id
  json.url recipe_book_url(recipe_book, format: :json)
end
