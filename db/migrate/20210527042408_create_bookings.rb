class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.decimal :price
      t.datetime :date
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
