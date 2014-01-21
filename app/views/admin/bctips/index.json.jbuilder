json.array!(@admin_bctips) do |admin_bctip|
  json.extract! admin_bctip, :title, :intro, :body, :showon_admin_dashboard, :showon_wed_dashboard, :publish_from, :publish_to
  json.url admin_bctip_url(admin_bctip, format: :json)
end
