class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :contact_id
      t.string :xero_invoice_id
      t.text :description
      t.string :unit_amount
      t.integer :quantity
      t.integer :account_code
      t.datetime :due_date

      t.timestamps
    end
  end
end
