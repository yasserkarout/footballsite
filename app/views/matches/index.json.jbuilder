json.array!(@matches) do |match|
  json.extract! match, :sport, :description, :numOfPlayers, :location, :date
  json.url match_url(match, format: :json)
end