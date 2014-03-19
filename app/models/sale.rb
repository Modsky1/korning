class Sale < ActiveRecord::Base
  has_one :product_sale
end
