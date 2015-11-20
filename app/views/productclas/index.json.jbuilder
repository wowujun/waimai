json.array!(@productclas) do |productcla|
  json.extract! productcla, :id, :name
  json.url productcla_url(productcla, format: :json)
end
