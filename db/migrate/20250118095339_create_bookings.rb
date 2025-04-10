class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
