class AddLongitudeAtToTours < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :longitude, :float
  end
end
