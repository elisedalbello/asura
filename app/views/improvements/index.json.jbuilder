json.array!(@improvements) do |improvement|
  json.extract! improvement, :id, :name
  json.url improvement_url(improvement, format: :json)
end
