class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :start_time
      t.string :end_time
      t.integer :user_id
      t.integer :turf_id

      t.timestamps
    end
  end
end
