class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer     :order_no
      t.string      :supplier
      t.date        :date
      
      t.timestamps
    end
  end
end
