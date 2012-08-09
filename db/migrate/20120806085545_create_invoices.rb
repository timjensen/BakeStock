class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string      :customer
      t.string      :cust_contact
      t.date        :date

      t.timestamps
    end
  end
end
