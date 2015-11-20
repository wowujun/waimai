json.array!(@indents) do |indent|
  json.extract! indent, :id, :customer_id, :diliveryman_id, :number, :status, :orderstatus, :sum, :bltime, :finishtime
  json.url indent_url(indent, format: :json)
end
