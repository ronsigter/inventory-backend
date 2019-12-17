module Resolvers
  class Products
    class << self
      def all_products
        Product.all
      end
    end
  end
end
