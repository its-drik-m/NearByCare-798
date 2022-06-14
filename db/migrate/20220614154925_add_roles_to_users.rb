class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :carer, :string
    add_column :users, :patient, :string
  end
end
