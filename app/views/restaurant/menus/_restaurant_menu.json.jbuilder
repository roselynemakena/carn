json.extract! restaurant_menu, :id, :menu_name, :menu_description, :created_at, :updated_at
json.url restaurant_menu_url(restaurant_menu, format: :json)
