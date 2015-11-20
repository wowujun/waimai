json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :title, :renderto, :image, :status, :startdate, :enddate, :starttime, :endtime
  json.url advertisement_url(advertisement, format: :json)
end
