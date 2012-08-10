# == Schema Information
#
# Table name: invoice_items
#
#  id         :integer          not null, primary key
#  invoice_id :integer
#  prod       :string(255)
#  quanity    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe InvoiceItem do
  
  before { @item = InvoiceItem.new(invoice_id: "1", prod: "superlolly", quanity: "67") }
     
  subject { @item }

  it { should respond_to(:invoice_id) }
  it { should respond_to(:prod) }
  it { should respond_to(:quanity) }
      
  it { should be_valid }
  
  describe "when product name is not present" do
    before { @item.prod = " " }
    it { should_not be_valid }
  end
  
  describe "when quantity is not present" do
    before { @item.quanity = " " }
    it { should_not be_valid }
  end
  
end
