module Types
  module Models
    class Invoice < Types::BaseObject
      description "Invoice details"

      field :id, ID, null: true
      field :invoice_number, String, null: true
      field :user, Types::Models::User, null: true
      field :store, Types::Models::Store, null: true
      field :products, [Types::Models::Product], null: true

    end
  end
end
