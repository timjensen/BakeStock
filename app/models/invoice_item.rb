class InvoiceItem < ActiveRecord::Base
  
  attr_accessible :prod, :quanity
  belongs_to :invoice
  
   
end
