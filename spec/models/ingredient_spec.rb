# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  supplier_id :integer
#  ing_name    :string(255)
#  cost        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Ingredient do
  
  before { @ingredient = Ingredient.new(supplier_id: "1", ing_name: "Flour", cost: "1.00" )}

  subject { @ingredient }

  it { should respond_to(:supplier_id) }
  it { should respond_to(:ing_name) }
  it { should respond_to(:cost) }
        
  it { should be_valid }
  
  describe "when suppliers id is not present" do
    before { @ingredient.supplier_id = " " }
    it { should_not be_valid }
  end
  
  describe "when ingredient name is not present" do
    before { @ingredient.ing_name = " " }
    it { should_not be_valid }
  end
  
  describe "when ingredient cost is not present" do
    before { @ingredient.cost = " " }
    it { should_not be_valid }
  end
  
end
