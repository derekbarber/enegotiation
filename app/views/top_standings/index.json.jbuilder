json.array!(@top_standings) do |top_standing|
  json.extract! top_standing, :title, :system, :order
  json.url top_standing_url(top_standing, format: :json)
end