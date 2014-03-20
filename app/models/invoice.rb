class Invoice < ActiveRecord::Base
  validates :invoice_number, presence: true
end
