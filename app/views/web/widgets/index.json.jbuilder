json.array!(@web_widgets) do |web_widget|
  json.extract! web_widget, :id, :name, :body
  json.url web_widget_url(web_widget, format: :json)
end
