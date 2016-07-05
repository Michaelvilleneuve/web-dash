json.array!(@sites) do |site|
  json.extract! site, :id, :title, :url, :checker, :description
  json.url site_url(site, format: :json)
end
