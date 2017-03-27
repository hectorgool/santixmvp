class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :customers
      t.date :date
      t.date :schedule
      t.references :tour, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
