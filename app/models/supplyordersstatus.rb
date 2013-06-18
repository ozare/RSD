class Supplyordersstatus < ActiveRecord::Base
  attr_accessible :Status
  has_many :supplyorders
  has_many :orders
end
