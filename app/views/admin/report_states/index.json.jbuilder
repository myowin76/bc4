json.array!(@admin_report_states) do |admin_report_state|
  json.extract! admin_report_state, :id, :name, :code
  json.url admin_report_state_url(admin_report_state, format: :json)
end
