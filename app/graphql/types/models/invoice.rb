module Types
  module Models
    class Invoice < Types::BaseObject
      description "Invoice details"

      field :id, ID, null: true
      field :invoice_number, String, null: true
      field :user, Types::Models::User, null: true
      field :store, Types::Models::Store, null: true
      field :orders, [Types::Models::Order], null: true
      field :delivery_person, Types::Models::DeliveryPerson, null: true
      field :sales_person, Types::Models::SalesPerson, null: true

    end
  end
end
