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

class Supplier < ActiveRecord::Base
  
  attr_accessible :sup_name , :address, :fax, :phone
  
  has_many :ingredients
  
  validates_presence_of :sup_name, :message => "A supplier without a name is abit dodgy?..."
  validates_presence_of :address, :message => "A supplier can't not have an address..."
  validates_presence_of :phone, :message => "A supplier can't not have an phone number..."
end
