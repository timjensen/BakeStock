# == Schema Information
#
# Table name: suppliers
#
#  id         :integer          not null, primary key
#  sup_name   :string(255)
#  address    :string(255)
#  fax        :integer
#  phone      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Supplier do
  
  before { @supplier = Supplier.new(sup_name: "Baking Junk", address: "Bogin Ville", phone: "12345678", fax: "12345678" )}

  subject { @supplier }

  it { should respond_to(:sup_name) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }
  it { should respond_to(:fax) }
      
  it { should be_valid }
  
  describe "when suppliers name is not present" do
    before { @supplier.sup_name = " " }
    it { should_not be_valid }
  end
  
  describe "when suppliers address is not present" do
    before { @supplier.address = " " }
    it { should_not be_valid }
  end
  
  describe "when suppliers phone number is not present" do
    before { @supplier.phone = " " }
    it { should_not be_valid }
  end

end
