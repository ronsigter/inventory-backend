module Types
  module Models
    class Store < Types::BaseObject
      description "Store details"

      field :id, ID, null: true
      field :name, String, null: true
      field :address, String, null: true

    end
  end
end
