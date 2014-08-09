json.array!(@eateries) do |eatery|
  json.extract! eatery, :id, :name, :address, :lat_long, :phone_num, :hours, :image_url, :website, :cost, :rating, :type_food, :drive_thru, :delivery, :market, :reviews, :pop_items
  json.url eatery_url(eatery, format: :json)
end
