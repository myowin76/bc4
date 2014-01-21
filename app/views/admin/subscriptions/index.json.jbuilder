json.array!(@admin_subscriptions) do |admin_subscription|
  json.extract! admin_subscription, :name, :code
  json.url admin_subscription_url(admin_subscription, format: :json)
end
