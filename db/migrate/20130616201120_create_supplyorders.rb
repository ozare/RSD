class CreateSupplyorders < ActiveRecord::Migration
  def change
    create_table :supplyorders do |t|
      t.integer :SupplierRef
      t.integer :CreatedByRef
      t.date :SubmittedDate
      t.date :ExpectedDate
      t.integer :ShippingFee
      t.date :PaymentDate
      t.integer :PaymentAmmount
      t.text :PaymentMethod
      t.integer :StatusRef

      t.timestamps
    end
  end
end
