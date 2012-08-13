# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  ing_id     :integer
#  quanity    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe OrderItem do
  
  before { @item = OrderItem.new(order_id: "1", ingredient_id: "1", quanity: "7") }
     
  subject { @item }

  it { should respond_to(:order_id) }
  it { should respond_to(:ingredient_id) }
  it { should respond_to(:quanity) }
      
  it { should be_valid }
  
  describe "when product name is not present" do
    before { @item.ingredient_id = " " }
    it { should_not be_valid }
  end
  
  describe "when quantity is not present" do
    before { @item.quanity = " " }
    it { should_not be_valid }
  end
  
end
