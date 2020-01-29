class Station < ApplicationRecord
  #Uniqueness was enforced from frontend: a station can't be acquired if it is already in 'my stations'(determined by the 'in_my_station' boolean) over there at the frontend
  belongs_to :user
  has_many :notes, dependent: :destroy
end
