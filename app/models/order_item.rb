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

class OrderItem < ActiveRecord::Base
  attr_accessible :ingredient_id, :quanity
  
  belongs_to :order
  
  validates_presence_of :ingredient_id, :message => "Not much of an order if your not actaully ording anything?..."
  validates_presence_of :quanity, :message => "How is the supplier going to know how many to send you?..."
end
