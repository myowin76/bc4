json.array!(@screengrabs) do |screengrab|
  json.extract! screengrab, :caption
  json.url screengrab_url(screengrab, format: :json)
end
