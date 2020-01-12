class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
