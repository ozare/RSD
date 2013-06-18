class Product < ActiveRecord::Base
  attr_accessible :ProductCategory, :ProductCode, :ProductCost, :ProductDepth, :ProductName
  has_many :orders
  
  def self.search(search)
  if search
    find(:all, :conditions => ['ProductName LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
