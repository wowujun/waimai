json.array!(@indent_details) do |indent_detail|
  json.extract! indent_detail, :id, :indent_id, :product_id, :name, :num, :price
  json.url indent_detail_url(indent_detail, format: :json)
end
