json.array!(@admins) do |admin|
  json.extract! admin, :id, :name, :loginname, :password_digest, :status
  json.url admin_url(admin, format: :json)
end
