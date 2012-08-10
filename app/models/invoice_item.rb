# == Schema Information
#
# Table name: invoice_items
#
#  id         :integer          not null, primary key
#  invoice_id :integer
#  prod       :string(255)
#  quanity    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceItem < ActiveRecord::Base
  
  attr_accessible :invoice_id, :prod, :quanity
  belongs_to :invoice
  
  validates_presence_of :prod, :message => "Product name required"
  validates_presence_of :quanity, :message => "How many do we ahve to make?" 
end
