module Types
  class QueryType < Types::BaseObject
    field :products, [Types::Models::Product], null: false do
      description "An example field added by the generator"
    end

    def products
      Resolvers::Products.all_products
    end

  end
end
