module Types
  class QueryType < Types::BaseObject
    field :products, [Types::Models::Product], null: false do
      description "Get all products"
    end

    field :stores, [Types::Models::Store], null: false do
      description "Get all stores"
    end

    def products
      Resolvers::Products.all_products
    end

    def stores
      Resolvers::Stores.all_stores
    end

  end
end
