class ProductSale < ActiveRecord::Base
  belongs_to :sale
  has_one :product
end
