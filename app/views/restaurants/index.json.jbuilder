json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :lat_long, :phone_num, :hours, :image_url, :website, :cost, :rating, :type_food, :drive_thru, :delivery, :market, :reviews, :pop_items
  json.url restaurant_url(restaurant, format: :json)
end
