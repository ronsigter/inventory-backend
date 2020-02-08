module Types
  module Models
    class SalesPerson < Types::BaseObject
      description "Sales Person details"

      field :id, ID, null: true
      field :first_name, String, null: true
      field :last_name, String, null: true
    end
  end
end
