json.extract! post, :id, :title, :location, :date, :text, :photos, :privacy, :bus, :car, :boat, :plane, :walking, :train, :created_at, :updated_at
json.url post_url(post, format: :json)