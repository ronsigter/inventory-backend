class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :orders
end
