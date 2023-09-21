json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address, :category, :rating, :phone_number
end
