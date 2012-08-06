class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string      :customer
      t.string      :cust_contact
      t.integer     :invoice_no
      t.date        :date

      t.timestamps
    end
  end
end
