class AddUrlRoomToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :url_room, :string
  end
end
