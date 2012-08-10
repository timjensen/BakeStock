# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_no   :integer
#  ing_no     :integer
#  quanity    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ActiveRecord::Base
  # attr_accessible :title, :body
end
