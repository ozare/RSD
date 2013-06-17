class Supplyorder < ActiveRecord::Base
  attr_accessible :CreatedByRef, :ExpectedDate, :PaymentAmmount, :PaymentDate, :PaymentMethod, :ShippingFee, :StatusRef, :SubmittedDate, :SupplierRef
  belongs_to :supplier
  belongs_to :employee
  belongs_to :supplyordersstatus
end
