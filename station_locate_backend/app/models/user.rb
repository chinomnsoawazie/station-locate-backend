class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :locations, dependent: :destroy
    has_many :stations, dependent: :destroy
    has_many :notes, through: :stations
end
