json.array!(@entries) do |entry|
  json.extract! entry, :data
  json.url entry_url(entry, format: :json)
end