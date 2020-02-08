module Types
  module Models
    class Order < Types::BaseObject
      description "Order details"

      field :id, ID, null: true
      field :product, String, null: true
      field :quantity_bought, Float, null: true
      field :price, Float, null: true
      field :total, Float, null: true

      def product
        object.product.title
      end

      def price
        object.product.price
      end

      def total
        object.product.price * object.quantity_bought
      end

    end
  end
end
