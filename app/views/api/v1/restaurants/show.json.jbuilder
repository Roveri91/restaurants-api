json.extract! @restaurant, :id, :name, :address, :category, :rating, :phone_number
json.owner @restaurant.user.username
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
  json.author comment.user.username
end
