json.array!(@clas) do |cla|
  json.extract! cla, :id, :name
  json.url cla_url(cla, format: :json)
end
