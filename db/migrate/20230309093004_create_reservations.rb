class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :motocycle, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
