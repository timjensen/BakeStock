class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.intger        :order_no
      t.integer       :ing_no
      t.integer       :quanity
      
      t.timestamps
    end
  end
end
