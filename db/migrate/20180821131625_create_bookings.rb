class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :days
      t.string :start_date
      t.string :end_date
      t.string :number_of_people
      t.boolean :confirmed
      t.integer :price
      t.string :expired
      t.timestamps
    end
  end
end
