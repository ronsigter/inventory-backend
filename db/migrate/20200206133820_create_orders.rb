class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :invoice_id
      t.float :quantity_bought
      t.float :price
      t.float :total
    end

    add_column :invoices, :orders_id, :integer
  end
end
