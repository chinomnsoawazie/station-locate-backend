class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :country, :state, :city, :zipcode, :street_address
end
