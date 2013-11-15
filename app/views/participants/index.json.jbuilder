json.array!(@participants) do |participant|
  json.extract! participant, :name, :content, :image, :enabled
  json.url participant_url(participant, format: :json)
end