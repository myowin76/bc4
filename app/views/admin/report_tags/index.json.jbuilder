json.array!(@admin_report_tags) do |admin_report_tag|
  json.extract! admin_report_tag, :name
  json.url admin_report_tag_url(admin_report_tag, format: :json)
end
