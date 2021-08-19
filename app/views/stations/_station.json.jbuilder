json.extract! station, :id, :line, :station_name, :walk, :property_id, :created_at, :updated_at
json.url station_url(station, format: :json)
