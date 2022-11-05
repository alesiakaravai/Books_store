json.extract! subscription, :id, :book_id, :subscriber_id, :delete_at, :is_active, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
