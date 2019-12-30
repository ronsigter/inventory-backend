module Resolvers
  class Invoices
    class << self
      def all_invoices
        Invoice.all
      end

      def create_invoice(user, **arguments)
        Invoice.create(
          invoice_number: arguments[:invoice_number],
          user_id: user.id,
          store_id: arguments[:store_id],
          product_ids: arguments[:product_ids]
        )
      end
    end
  end
end
