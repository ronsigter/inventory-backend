class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.integer :user_id
      t.integer :store_id
    end

    add_column :products, :invoice_id, :integer
  end
end
