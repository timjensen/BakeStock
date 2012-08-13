# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  supplier_id :string(255)
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Order do
    
  before { @order = Order.new(supplier_id: "1", date: "2012-08-09", order_items_attributes: {'0' =>{'ingredient_id' => "1", 'quanity' => 3}}) }

  subject { @order } 

    it { should respond_to(:supplier_id) }
    it { should respond_to(:date) }
    it { should accept_nested_attributes_for(:order_items) }
    
    it { should be_valid }
  
  describe "when supplier id is not present" do
    before { @order.supplier_id = " " }
    it { should_not be_valid }
  end
  
  describe "when a date is not present" do
    before { @order.date = " " }
    it { should_not be_valid }
  end
  
  describe "when no order items are present" do
    before { @order = Order.new(supplier_id: "1", date: "2012-08-09") }
    it { should_not be_valid }
  end
  
  it "should destroy associated invoice items" do
      items = @order.order_items
      @order.destroy
      items.each do |item|
      OrderItem.find_by_id(item.id).should be_nil
    end
  end
end
