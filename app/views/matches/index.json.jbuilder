json.array!(@matches) do |match|
  json.extract! match, :sport, :description, :numOfPlayers, :address, :date
  json.url match_url(match, format: :json)
end