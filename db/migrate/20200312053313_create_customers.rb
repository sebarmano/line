class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
