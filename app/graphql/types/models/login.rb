module Types
  module Models
    class Login < Types::BaseObject
      description "Login details"

      field :user, Types::Models::User, null: true
      field :status, String, null: true

    end
  end
end
