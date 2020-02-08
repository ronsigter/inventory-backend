module Types
  module Models
    class DeliveryPerson < Types::BaseObject
      description "Delivery Person details"

      field :id, ID, null: true
      field :first_name, String, null: true
      field :last_name, String, null: true
    end
  end
end
