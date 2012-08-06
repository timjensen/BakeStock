class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.intger        :inv_no
      t.integer       :prod_no
      t.integer       :quanity

      t.timestamps
    end
  end
end
