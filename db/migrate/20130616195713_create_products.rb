class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :ProductCode
      t.text :ProductName
      t.text :ProductDepth
      t.text :ProductCategory
      t.integer :ProductCost

      t.timestamps
    end
  end
end
