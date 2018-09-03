class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :days
      t.string :start_date
      t.string :end_date
      t.boolean :confirmed
      t.integer :price
      t.string :expired
      t.string :state
      t.string :item_sku
      t.monetize :amount, currency: { present: false }
      t.jsonb :payment
      t.timestamps
    end
  end
end
