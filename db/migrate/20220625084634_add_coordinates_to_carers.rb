class AddCoordinatesToCarers < ActiveRecord::Migration[6.1]
  def change
    add_column :carers, :latitude, :float
    add_column :carers, :longitude, :float
  end
end
