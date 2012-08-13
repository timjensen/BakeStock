# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  prod_name  :string(255)
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Product do
  
  before { @product = Product.new(prod_name: "SuperDuperBun", price: "25")}

  subject { @product }

  it { should respond_to(:prod_name) }
  it { should respond_to(:price) }
          
  it { should be_valid }
  
  describe "when product name is not present" do
    before { @product.prod_name = " " }
    it { should_not be_valid }
  end
  
  describe "when product name is not present" do
    before { @product.price = " " }
    it { should_not be_valid }
  end
end
