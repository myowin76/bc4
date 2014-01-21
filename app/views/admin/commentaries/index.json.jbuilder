json.array!(@admin_commentaries) do |admin_commentary|
  json.extract! admin_commentary, :references, :title, :intro, :body, :showon_admin_dashboard, :showon_wed_dashboard, :publish_from, :publish_to
  json.url admin_commentary_url(admin_commentary, format: :json)
end
