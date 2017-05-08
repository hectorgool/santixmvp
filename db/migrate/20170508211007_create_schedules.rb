class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :rule
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
