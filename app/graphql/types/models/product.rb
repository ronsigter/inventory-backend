module Types
  module Models
    class Product < Types::BaseObject
      description "Product details"

      field :id, ID, null: true
      field :title, String, null: true
      field :description, String, null: true
      field :quantity, Float, null: true
      field :price, Float, null: true
    end
  end
end
