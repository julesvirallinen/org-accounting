json.extract! meeting, :id, :date, :meeting, :place, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)