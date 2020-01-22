class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :country, :state, :city, :zipcode, :street_address
  has_many :locations
  has_many :stations
  has_many :notes, through: :stations
end
