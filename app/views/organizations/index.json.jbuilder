json.array!(@organizations) do |organization|
  json.extract! organization, :data
  json.url organization_url(organization, format: :json)
end