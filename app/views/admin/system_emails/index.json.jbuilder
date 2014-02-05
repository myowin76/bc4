json.array!(@admin_system_emails) do |admin_system_email|
  json.extract! admin_system_email, :id, :name, :from, :subject, :body
  json.url admin_system_email_url(admin_system_email, format: :json)
end
