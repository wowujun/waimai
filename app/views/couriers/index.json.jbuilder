json.array!(@couriers) do |courier|
  json.extract! courier, :id, :name, :weichat_id, :status
  json.url courier_url(courier, format: :json)
end
