json.array!(@web_pages) do |web_page|
  json.extract! web_page, :meta_title, :meta_desc, :meta_keyword, :name, :page_title, :page_intro, :url, :body
  json.url web_page_url(web_page, format: :json)
end
