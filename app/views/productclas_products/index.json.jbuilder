json.array!(@productclas_products) do |productclas_product|
  json.extract! productclas_product, :id, :productcla_id, :product_id
  json.url productclas_product_url(productclas_product, format: :json)
end
