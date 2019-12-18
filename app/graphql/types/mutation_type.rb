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

    def login(**arguments)
      Resolvers::Users.login(arguments)
    end

    def logout()
      Resolvers::Users.logout(context[:current_user])
    end
  end
end
