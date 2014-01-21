json.array!(@metrics) do |metric|
  json.extract! metric, :name, :number, :score
  json.url metric_url(metric, format: :json)
end
