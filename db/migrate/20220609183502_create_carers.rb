class CreateCarers < ActiveRecord::Migration[6.1]
  def change
    create_table :carers do |t|
      t.string :specialty
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
