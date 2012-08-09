class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.integer       :invoice_id
      t.string        :prod
      t.integer       :quanity

      t.timestamps
    end
    
  end
end
