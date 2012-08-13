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

class Order < ActiveRecord::Base
  attr_accessible :date, :supplier_id, :order_items_attributes
  has_many :order_items
  accepts_nested_attributes_for :order_items, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true
  
  validates_presence_of :supplier_id, :message => "Order can not be completed without an order date"
  validates_presence_of :order_items, :message => "Order can not be completed without products"
  validates_presence_of :date, :message => "Order can not be completed without an order date"
  
  
end
