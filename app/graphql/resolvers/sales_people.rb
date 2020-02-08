module Resolvers
  class SalesPeople
    class << self
      def all_sales_person
        SalesPerson.all
      end
    end
  end
end
