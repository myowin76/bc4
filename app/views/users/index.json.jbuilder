json.array!(@users) do |user|
  json.extract! user, :username, :email, :firstname, :lastname, :job_title, :super_user, :approver, :dashboard_alerts, :active, :deleted, :company_id
  json.url user_url(user, format: :json)
end
