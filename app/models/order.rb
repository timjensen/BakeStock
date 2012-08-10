# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  supplier   :string(255)
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :date, :supplier_id
  
  
end
