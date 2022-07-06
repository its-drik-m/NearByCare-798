class AddCoordinatesToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :longitude, :float
    add_column :patients, :latitude, :float
  end
end
