class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :appointments
end
