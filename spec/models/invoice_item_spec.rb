require 'spec_helper'

describe InvoiceItem do
  
   before { @item = InvoiceItem.new(invoice_id: "1", prod: "superlolly", quanity: "67") }

  subject { @item }

  it { should respond_to(:invoice_id) }
  it { should respond_to(:prod) }
  it { should respond_to(:quanity) }
      
  it { should be_valid }
end
