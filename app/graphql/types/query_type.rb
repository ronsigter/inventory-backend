module Types
  class QueryType < Types::BaseObject
    field :products, [Types::Models::Product], null: false do
      description "Get all products"
    end

    field :stores, [Types::Models::Store], null: false do
      description "Get all stores"
    end

    field :sales_people, [Types::Models::SalesPerson], null: false do
      description "Get all Sales People"
    end

    field :delivery_people, [Types::Models::DeliveryPerson], null: false do
      description "Get all Sales People"
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

    def sales_people
      Resolvers::SalesPeople.all_sales_person
    end

    def delivery_people
      Resolvers::DeliveryPeople.all_delivery_person
    end

  end
end
