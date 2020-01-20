class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :station_id
      t.string :station_name
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
      t.float :longitude
      t.float :latitude
      t.string :street_address
      t.string :city
      t.string :intersection_directions
      t.string :country
      t.string :state
      t.integer :zipcode
      t.string :facility_type
      t.integer :no_of_fast_chargers
      t.integer :no_of_level_2_EVSE
      t.integer :no_of_level_1_EVSE
      t.string :ev_connector_types
      t.string :renewable_source
      t.float :geocode_accuracy
      t.boolean :in_my_stations

      t.timestamps
    end
  end
end
