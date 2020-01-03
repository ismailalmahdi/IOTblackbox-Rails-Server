json.extract! @map, :id, :time, :lat, :lon, :alt, :quality, :satellites, :hdop, :geoidal, :age, :stationID, :raw, :is_valid, :gps_type, :created_at, :updated_at
json.url map_url(@map, format: :json)
