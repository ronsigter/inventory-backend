module Resolvers
  class DeliveryPeople
    class << self
      def all_delivery_person
        DeliveryPerson.all
      end
    end
  end
end
