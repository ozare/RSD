class Order < ActiveRecord::Base
  attr_accessible :CustomerRef, :EmployeeRef, :OrderDate, :PaymentDate, :PaymentType, :Price, :ProductRef, :Quantity, :ShipFee, :ShippedDate, :ShipperRef, :StatusRef, :Total

  belongs_to :employee
  belongs_to :customer
  belongs_to :shipper
  belongs_to :product
  belongs_to :supplyordersstatus
end
