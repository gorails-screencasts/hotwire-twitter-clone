json.extract! tweet, :id, :body, :likes_count, :retweets_count, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
