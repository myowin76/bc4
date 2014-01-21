json.array!(@best_practices) do |best_practice|
  json.extract! best_practice, :name, :body, :company_id
  json.url best_practice_url(best_practice, format: :json)
end
