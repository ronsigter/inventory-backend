module Resolvers
  class Invoices
    class << self
      def all_invoices
        Invoice.all
      end

      def create_invoice(user, **arguments)
        invoice = Invoice.create(
          invoice_number: arguments[:invoice_number],
          user_id: user.id,
          store_id: arguments[:store_id],
          delivery_person_id: arguments[:delivery_person_id]
        )

        arguments[:products].each do |product|
          product_details = Product.find(product.item)

          Order.create(
            product_id: product.item,
            invoice_id: invoice.id,
            quantity_bought: product.quantity,
            price: product_details.price,
            total: product_details.price * product.quantity
          )

          product_details.decrement!(:quantity, by = product.quantity)
        end

        invoice
      end

    end
  end
end
