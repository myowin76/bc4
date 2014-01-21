json.array!(@reports) do |report|
  json.extract! report, :name, :project_id, :company_id, :publish_from, :publish_to
  json.url report_url(report, format: :json)
end
