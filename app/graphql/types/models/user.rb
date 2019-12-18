module Types
  module Models
    class User < Types::BaseObject
      description "User details"

      field :id, ID, null: true
      field :email, String, null: true
      field :first_name, String, null: true
      field :last_name, String, null: true
      field :authentication_token, String, null: true
    end
  end
end
