class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :cust_contact, :customer, :date, :invoice_items_attributes
  has_many :invoice_items
  accepts_nested_attributes_for :invoice_items, :reject_if => lambda { |a| a[:prod].blank? }, :allow_destroy => true
  
  validates_presence_of :cust_contact, :message => "Order can not be completed without customer contact details"
  validates_presence_of :customer, :message => "Order can not be completed without a customer name"
  validates_presence_of :invoice_items, :message => "Order can not be completed without products"
  validates_presence_of :date, :message => "Order can not be completed without an order date"

  
end
