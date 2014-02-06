json.array!(@admin_sub_metrics) do |admin_sub_metric|
  json.extract! admin_sub_metric, :id, :name, :number, :metric_id, :max_score
  json.url admin_sub_metric_url(admin_sub_metric, format: :json)
end
