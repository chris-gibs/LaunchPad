class CreateLaunches < ActiveRecord::Migration[6.1]
  def change
    create_table :launches do |t|
      t.string :type
      t.decimal :price
      t.datetime :launch_date
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
