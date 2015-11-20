json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :weichat_id, :tel, :address, :location, :balance, :integral
  json.url customer_url(customer, format: :json)
end
