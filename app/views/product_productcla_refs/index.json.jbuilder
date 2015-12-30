json.array!(@product_productcla_refs) do |product_productcla_ref|
  json.extract! product_productcla_ref, :id, :productcla_id, :product_id
  json.url product_productcla_ref_url(product_productcla_ref, format: :json)
end
