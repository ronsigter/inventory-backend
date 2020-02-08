module Types
  module Arguments
    class OrderForm < Types::BaseInputObject
      description "Order Form"

      argument :item, ID, required: true
      argument :quantity, Float, required: true
      argument :price, Float, required: true

    end
  end
end
