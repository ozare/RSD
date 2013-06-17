class Product < ActiveRecord::Base
  attr_accessible :ProductCategory, :ProductCode, :ProductCost, :ProductDepth, :ProductName
end
