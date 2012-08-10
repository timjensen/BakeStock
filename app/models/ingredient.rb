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

class Ingredient < ActiveRecord::Base
  attr_accessible :supplier_id, :ing_name, :cost
  belongs_to :supplier
  
  validates_presence_of :supplier_id, :message => "How can we tell who sells this if you dont add a supplier fool?..."
  validates_presence_of :ing_name, :message => "Umm an ingredient without a name?..."
  validates_presence_of :cost, :message => "Woot free ingredient?..."
end
