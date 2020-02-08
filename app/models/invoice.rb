class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :store
  belongs_to :delivery_person
  belongs_to :sales_person
  has_many :orders
end
