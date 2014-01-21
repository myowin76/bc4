json.array!(@admin_company_statuses) do |admin_company_status|
  json.extract! admin_company_status, :id, :name
  json.url admin_company_status_url(admin_company_status, format: :json)
end
