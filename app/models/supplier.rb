class Supplier < ActiveRecord::Base
  attr_accessible :Address, :City, :Company, :Country, :FirstName, :LastName, :Phone
  has_many :supplyorders
end