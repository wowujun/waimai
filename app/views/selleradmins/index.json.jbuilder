json.array!(@selleradmins) do |selleradmin|
  json.extract! selleradmin, :id, :name, :loginname, :password_digest, :status
  json.url selleradmin_url(selleradmin, format: :json)
end
