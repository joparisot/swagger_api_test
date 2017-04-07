json.extract! @user, :id, :email
json.last_signature @user.signatures.last
