class Supplyorder < ActiveRecord::Base
  attr_accessible :CreatedByRef, :ExpectedDate, :PaymentAmmount, :PaymentDate, :PaymentMethod, :ShippingFee, :StatusRef, :SubmittedDate, :SupplierRef
  belongs_to :supplier
end
