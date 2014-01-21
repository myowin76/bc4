json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :email, :first_name, :last_name, :company, :job_title, :country_id, :website, :bc_tip, :wen, :specials
  json.url newsletter_url(newsletter, format: :json)
end
