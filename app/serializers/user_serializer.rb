class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :small_picture
end
