class Supplier < ActiveRecord::Base
  attr_accessible :Address, :City, :Company, :Country, :FirstName, :LastName, :Phone
  has_many :supplyorders
  def self.search(search)
  if search
    find(:all, :conditions => ['LastName LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end