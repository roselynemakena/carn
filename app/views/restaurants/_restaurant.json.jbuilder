json.extract! restaurant, :id, :restaurant_name, :restaurant_description, :restaurant_location, :restaurant_image, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
