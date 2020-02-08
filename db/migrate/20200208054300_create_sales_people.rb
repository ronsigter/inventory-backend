class CreateSalesPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :sales_people do |t|
      t.integer :invoice_id
      t.string :first_name
      t.string :last_name
    end

    add_column :invoices, :sales_person_id, :integer
  end
end
