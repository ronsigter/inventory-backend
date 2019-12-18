module Resolvers
  class Users
    class << self
      def login(**arguements)
        user = User.where(email: arguements[:email]).first
        if user&.valid_password? arguements[:password]
          {
            user: user,
            status: "authorized"
          }
        else
          {
            status: "unauthorized"
          }
        end
      end

      def logout(user)
        user.update(authentication_token: nil)
        user
      end
    end
  end
end
