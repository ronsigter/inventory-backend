module Resolvers
  class SalesPeople
    class << self
      def all_sales_people
        SalesPerson.all
      end
    end
  end
end
