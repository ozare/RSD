# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "Customers", :force => true do |t|
    t.text "Company"
    t.text "LastName"
    t.text "FirstName"
    t.text "Phone"
    t.text "Address"
    t.text "City"
    t.text "Country"
  end

  create_table "Employees", :force => true do |t|
    t.text "Company"
    t.text "LastName"
    t.text "FirstName"
    t.text "Phone"
    t.text "Address"
    t.text "City"
    t.text "Country"
  end

  create_table "OrderDetails", :force => true do |t|
    t.integer "OrderRef",   :null => false
    t.integer "ProductRef", :null => false
    t.integer "Quantity"
    t.integer "Price"
    t.integer "Total"
  end

  add_index "orderdetails", ["OrderRef"], :name => "OrderRef"
  add_index "orderdetails", ["ProductRef"], :name => "ProductRef"

  create_table "OrderStatus", :force => true do |t|
    t.text "Status"
  end

  create_table "Orders", :force => true do |t|
    t.integer "EmployeeRef", :null => false
    t.integer "CustomerRef", :null => false
    t.date    "OrderDate"
    t.date    "ShippedDate"
    t.integer "ShipperRef",  :null => false
    t.integer "ShipFee"
    t.text    "PaymentType"
    t.date    "PaymentDate"
    t.integer "StatusRef",   :null => false
  end

  add_index "orders", ["CustomerRef"], :name => "CustomerRef"
  add_index "orders", ["EmployeeRef"], :name => "EmployeeRef"
  add_index "orders", ["ShipperRef"], :name => "ShipperRef"
  add_index "orders", ["StatusRef"], :name => "StatusRef"

  create_table "Products", :force => true do |t|
    t.text    "ProductCode"
    t.text    "ProductName"
    t.text    "ProductDepth"
    t.text    "ProductCategory"
    t.integer "ProductCost"
  end

  create_table "Shippers", :force => true do |t|
    t.text "Company"
    t.text "LastName"
    t.text "FirstName"
    t.text "Phone"
    t.text "Address"
    t.text "City"
    t.text "Country"
  end

  create_table "Suppliers", :force => true do |t|
    t.text "Company"
    t.text "LastName"
    t.text "FirstName"
    t.text "Phone"
    t.text "Address"
    t.text "City"
    t.text "Country"
  end

  create_table "SupplyOrders", :force => true do |t|
    t.integer "SupplierRef",    :null => false
    t.integer "CreatedByRef",   :null => false
    t.date    "SubmittedDate"
    t.date    "ExpectedDate"
    t.integer "ShippingFee"
    t.date    "PaymentDate"
    t.integer "PaymentAmmount"
    t.text    "PaymentMethod"
    t.integer "StatusRef",      :null => false
  end

  add_index "supplyorders", ["CreatedByRef"], :name => "CreatedByRef"
  add_index "supplyorders", ["StatusRef"], :name => "StatusRef"
  add_index "supplyorders", ["SupplierRef"], :name => "SupplierRef"

  create_table "SupplyOrdersStatus", :force => true do |t|
    t.text "Status"
  end

end
