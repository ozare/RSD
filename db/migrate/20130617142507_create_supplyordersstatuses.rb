class CreateSupplyordersstatuses < ActiveRecord::Migration
  def change
    create_table :supplyordersstatuses do |t|
      t.text :Status

      t.timestamps
    end
  end
end
