class AddCoordinatedToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :latitude, :float
    add_column :patients, :longitude, :float
  end
end
