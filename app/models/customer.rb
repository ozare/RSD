class Customer < ActiveRecord::Base
  attr_accessible :Address, :City, :Company, :Country, :FirstName, :LastName, :Phone
end
