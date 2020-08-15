class AddCityAndZipToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :city, :string
    add_column :customers, :zip, :string
  end
end
