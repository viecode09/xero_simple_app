json.extract! contact, :id, :name, :first_name, :last_name, :address_type, :address_lin1, :city, :phone_default, :phone_mobile, :created_at, :updated_at
json.url contact_url(contact, format: :json)
