json.array!(@products) do |product|
  json.extract! product, :id, :unit_id, :productcla_id, :seller_id, :name, :image, :costprice, :currentprice, :num, :status
  json.url product_url(product, format: :json)
end
