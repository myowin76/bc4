json.array!(@report_types) do |report_type|
  json.extract! report_type, :name, :name, :notes, :exe_summary, :recommendation, :best_practice, :supplementary
  json.url report_type_url(report_type, format: :json)
end
