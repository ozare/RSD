class Supplyordersstatus < ActiveRecord::Base
  attr_accessible :Status
  has_many :supplyorders
end
