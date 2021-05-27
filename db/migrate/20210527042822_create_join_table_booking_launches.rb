class CreateJoinTableBookingLaunches < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bookings, :launches do |t|
      t.index [:booking_id, :launch_id]
      t.index [:launch_id, :booking_id]
    end
  end
end
