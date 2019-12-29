module Resolvers
  class Stores
    class << self
      def all_stores
        Store.all
      end
    end
  end
end
