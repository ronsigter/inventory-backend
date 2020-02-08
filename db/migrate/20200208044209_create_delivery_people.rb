class CreateDeliveryPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_people do |t|
      t.integer :invoice_id
      t.string :first_name
      t.string :last_name
    end

    add_column :invoices, :delivery_person_id, :integer
  end
end
