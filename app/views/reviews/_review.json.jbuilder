json.extract! review, :id, :body, :rating, :title, :created_at, :updated_at
json.url review_url(review, format: :json)
