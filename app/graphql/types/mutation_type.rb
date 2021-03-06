module Types
  class MutationType < Types::BaseObject
    field :login, Types::Models::Login, null: false do
      description "Returns user token"

      argument :email, String, required: true
      argument :password, String, required: true
    end

    field :logout, Types::Models::User, null: false do
      description "Deletes user token"
    end

    field :create_product, Types::Models::Product, null: false do
      description "Creates new product"

      argument :title, String, required: true
      argument :description, String, required: false
      argument :quantity, Float, required: true
      argument :price, Float, required: true
    end

    field :create_invoice, Types::Models::Invoice, null: false do
      description "Creates new Invoice"

      argument :invoice_number, String, required: true
      argument :store_id, ID, required: true
      argument :delivery_person_id, ID, required: true
      argument :sales_person_id, ID, required: true
      argument :products, [Types::Arguments::OrderForm], required: true
    end

    def login(**arguments)
      Resolvers::Users.login(arguments)
    end

    def logout()
      Resolvers::Users.logout(context[:current_user])
    end

    def create_product(**arguments)
      Resolvers::Products.create_product(arguments)
    end

    def create_invoice(**arguments)
      Resolvers::Invoices.create_invoice(context[:current_user] ,arguments)
    end
  end
end
