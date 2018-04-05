class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :address_type
      t.string :address_lin1
      t.string :city
      t.string :phone_default
      t.string :phone_mobile

      t.timestamps
    end
  end
end
