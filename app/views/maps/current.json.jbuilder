json.extract! @map, :id, :gps_time, :lat, :lon, :alt, :quality, :satellites, :hdop, :geoidal, :age, :stationID, :gps_raw, :is_valid, :gps_type, :created_at, :updated_at
json.url map_url(@map, format: :json)
