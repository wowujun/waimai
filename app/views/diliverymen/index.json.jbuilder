json.array!(@diliverymen) do |diliveryman|
  json.extract! diliveryman, :id, :name, :weichat_id, :status
  json.url diliveryman_url(diliveryman, format: :json)
end
