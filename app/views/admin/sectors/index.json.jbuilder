json.array!(@sectors) do |sector|
  json.extract! sector, :name, :url, :renew_date, :company_type_id, :sector_id, :country_id, :reports_count
  json.url sector_url(sector, format: :json)
end
