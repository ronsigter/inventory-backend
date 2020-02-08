class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :store
  belongs_to :delivery_person
  has_many :orders
end
