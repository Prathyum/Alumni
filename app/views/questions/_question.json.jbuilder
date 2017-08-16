json.extract! question, :id, :tile, :body, :created_at, :updated_at
json.url question_url(question, format: :json)
