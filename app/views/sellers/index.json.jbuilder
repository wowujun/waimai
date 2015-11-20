json.array!(@sellers) do |seller|
  json.extract! seller, :id, :selleradmin_id, :name, :summary, :tel, :address, :logo, :hint, :location, :status
  json.url seller_url(seller, format: :json)
end
