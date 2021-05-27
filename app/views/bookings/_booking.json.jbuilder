json.extract! booking, :id, :price, :date, :organisation_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
