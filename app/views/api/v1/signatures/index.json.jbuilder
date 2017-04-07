json.array! @signatures do |signature|
  json.extract! signature, :content, :user
  # and to extract a data from the user?
end
