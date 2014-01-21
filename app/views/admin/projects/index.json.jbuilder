json.array!(@projects) do |project|
  json.extract! project, :name, :publish_date, :ft_index, :in_result_table, :can_compare, :reports_count
  json.url project_url(project, format: :json)
end
