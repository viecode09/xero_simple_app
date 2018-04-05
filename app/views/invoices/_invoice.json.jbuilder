json.extract! invoice, :id, :contact_id, :xero_invoice_id, :description, :unit_amount, :quantity, :account_code, :due_date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
