class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :EmployeeRef
      t.integer :CustomerRef
      t.date :OrderDate
      t.date :ShippedDate
      t.integer :ShipperRef
      t.integer :ShipFee
      t.text :PaymentType
      t.date :PaymentDate
      t.integer :StatusRef
      t.integer :ProductRef
      t.integer :Quantity
      t.integer :Price
      t.integer :Total

      t.timestamps
    end
  end
end
