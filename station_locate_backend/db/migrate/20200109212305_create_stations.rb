class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :station_id
      t.string :name
      t.string :owner_network
      t.string :owner_network_web
      t.string :hours
      t.string :rates
      t.integer :distance
      t.integer :phone_no
      t.string :status
      t.string :public_or_private
      t.string :access
      t.string :accepted_payments
      t.integer :longitude
      t.integer :latitude
      t.string :country
      t.string :state
      t.string :city
      t.integer :zipcode
      t.string :facility_type
      t.integer :no_of_fast_chargers
      t.integer :no_of_level_2_EVSE
      t.integer :no_of_level_1_EVSE
      t.string :renewable_source
      t.string :geocode_accuracy

      t.timestamps
    end
  end
end
