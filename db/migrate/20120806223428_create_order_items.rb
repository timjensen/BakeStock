class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer       :order_id
      t.integer       :ing_id
      t.integer       :quanity
      
      t.timestamps
    end
  end
end
