class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :Company
      t.text :LastName
      t.text :FirstName
      t.text :Phone
      t.text :Address
      t.text :City
      t.text :Country

      t.timestamps
    end
  end
end
