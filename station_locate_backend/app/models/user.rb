class User < ApplicationRecord
    has_secure_password
    has_many :locations
    has_many :stations
    has_many :notes, through: :stations
end
