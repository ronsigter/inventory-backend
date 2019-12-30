module Types
  class QueryType < Types::BaseObject
    field :products, [Types::Models::Product], null: false do
      description "Get all products"
    end

    field :stores, [Types::Models::Store], null: false do
      description "Get all stores"
    end

    field :invoices, [Types::Models::Invoice], null: false do
      description "Get all invoices"
    end

    def products
      Resolvers::Products.all_products
    end

    def stores
      Resolvers::Stores.all_stores
    end

    def invoices
      Resolvers::Invoices.all_invoices
    end

  end
end
