class SupplyItem < ActiveRecord::Base
  attr_accessible :description, :name, :product_id
  belongs_to :product
end
