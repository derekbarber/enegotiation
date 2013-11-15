json.array!(@top_standing_entries) do |top_standing_entry|
  json.extract! top_standing_entry, :top_standing_id, :rank, :player, :coach, :country, :comments
  json.url top_standing_entry_url(top_standing_entry, format: :json)
end