json.extract! gp, :id, :time, :lat, :lon, :alt, :quality, :satellites, :hdop, :geoidal, :age, :stationID, :raw, :valid, :type, :created_at, :updated_at
json.url gp_url(gp, format: :json)
