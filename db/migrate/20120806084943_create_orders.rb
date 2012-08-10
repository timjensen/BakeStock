class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string      :supplier_id
      t.date        :date
      
      t.timestamps
    end
  end
end
