class AddLatitudeAtToTours < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :latitude, :float
  end
end
