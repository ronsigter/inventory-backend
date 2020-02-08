class DeliveryPerson < ApplicationRecord
  has_many :invoices
end
