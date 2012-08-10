# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  product_no :integer
#  name       :string(255)
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  # attr_accessible :title, :body
end
