json.array!(@admin_company_types) do |admin_company_type|
  json.extract! admin_company_type, 
  json.url admin_company_type_url(admin_company_type, format: :json)
end
