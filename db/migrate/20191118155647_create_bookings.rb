class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :lama, foreign_key: true
      t.integer :total_price
      t.date :start
      t.date :end
      t.integer :number_of_users
      t.boolean :driver_manager
      t.string :status

      t.timestamps
    end
  end
end
