module Resolvers
  class Products
    class << self
      def all_products
        Product.all
      end

      def create_product(**arguments)
        Product.create(
          title: arguments[:title],
          description: arguments[:description],
          quantity: arguments[:quantity],
          price: arguments[:price]
        )
      end
    end
  end
end
