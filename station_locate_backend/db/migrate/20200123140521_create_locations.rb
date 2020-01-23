class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :location_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country

      t.timestamps
    end
  end
end
