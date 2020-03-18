class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :name
      t.string :color
      t.string :year
      t.string :plate
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
