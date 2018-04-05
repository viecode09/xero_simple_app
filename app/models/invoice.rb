class Invoice < ApplicationRecord
    before_create :xero_save

    private

    def xero_save
        invoice = Contact.build_invoice(self)
        self.xero_invoice_id = invoice.xero_invoice_id
    end
end
