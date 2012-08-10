class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string      :sup_name
      t.string      :address
      t.integer     :fax
      t.integer     :phone
      
      t.timestamps
    end
  end
end
