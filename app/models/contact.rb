class Contact < ApplicationRecord
    def self.building_contact(contact)
        con = $xero_client.Contact.build(:name => contact.name)
        con.first_name = contact.first_name
        con.last_name = contact.last_name
        con.add_address(:type => 'STREET', :line1 => contact.address_lin1, :city => contact.city)
        con.add_phone(:type => 'DEFAULT', :number => contact.phone_default)
        con.add_phone(:type => 'MOBILE', :number => contact.phone_mobile)
        con.save
    end

    def self.build_invoice(object)
        contact = $xero_client.Contact.find(object.contact_id)
        invoice = $xero_client.Invoice.build(:type => "ACCREC", :contact => contact, :date => Date.today, :due_date => object.due_date)
        invoice.add_line_item(:description => object.description, :unit_amount => object.unit_amount, :quantity => object.quantity, :account_code => object.account_code)
        invoice.save
        object.xero_invoice_id = invoice.id
        return object
    end
end
