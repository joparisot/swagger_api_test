json.array! @users do |user|
  json.extract! user, :email

  # and to extract a data from the user?
end

  # json.comments @restaurant.comments do |comment|
  #   json.extract! comment, :id, :content
  # end
