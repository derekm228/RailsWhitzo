class ChangeStringFormatInRental < ActiveRecord::Migration
  def change
      change_column :rentals, :zip, :string
  end
end
