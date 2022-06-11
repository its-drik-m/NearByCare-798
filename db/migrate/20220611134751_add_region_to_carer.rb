class AddRegionToCarer < ActiveRecord::Migration[6.1]
  def change
    add_column :carers, :region, :string
  end
end
