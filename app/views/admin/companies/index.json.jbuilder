json.array!(@companies) do |company|
  json.extract! company, :name, :url, :renew_date, :company_type_id, :sector_id, :country_id, :reports_count
  json.url company_url(company, format: :json)
end
