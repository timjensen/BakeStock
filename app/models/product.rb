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

class Product < ActiveRecord::Base
  attr_accessible :prod_name, :price 
  
  validates_presence_of :prod_name, :message => "How do you sell that which has no name?..."
  validates_presence_of :price, :message => "Nothing is free from this bakery..."
end
