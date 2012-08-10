# == Schema Information
#
# Table name: invoices
#
#  id           :integer          not null, primary key
#  customer     :string(255)
#  cust_contact :string(255)
#  date         :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Invoice do
  
  before { @invoice = Invoice.new(customer: "Bob", cust_contact: "111", date: "2012-08-09", invoice_items_attributes: {'0' =>{'prod' => "asdd", 'quanity' => 3}}) }

  subject { @invoice }

  it { should respond_to(:customer) }
  it { should respond_to(:cust_contact) }
  it { should respond_to(:date) }
  it { should accept_nested_attributes_for(:invoice_items) }
    
  it { should be_valid }
  
  describe "when customer name is not present" do
    before { @invoice.customer = " " }
    it { should_not be_valid }
  end
  
  describe "when customer code is not present" do
    before { @invoice.cust_contact = " " }
    it { should_not be_valid }
  end
  
  describe "when date is not present" do
    before { @invoice.date = " " }
    it { should_not be_valid }
  end
  
  describe "when no items are present" do
    before { @invoice = Invoice.new(customer: "Bob", cust_contact: "111", date: "2012-08-09") }
    it { should_not be_valid }
  end
  
  it "should destroy associated invoice items" do
      items = @invoice.invoice_items
      @invoice.destroy
      items.each do |item|
        InvoiceItem.find_by_id(item.id).should be_nil
      end
    end
end
