class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :owner
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :lease_months
      t.date :move_in
      t.date :move_out
      t.boolean :washer_dryer
      t.boolean :outdoor_space
      t.boolean :fitness_center
      t.boolean :pet_friendly
      t.boolean :dishwasher
      t.boolean :pool
      t.boolean :storage_space
      t.boolean :wifi
      t.boolean :utilities_included
      t.boolean :porch
      t.boolean :bike_friendly
      t.boolean :ceiling_fans
      t.boolean :parking
      t.boolean :central_air
      t.boolean :concierge
      t.boolean :fireplace

      t.timestamps null: false
    end
  end
end
