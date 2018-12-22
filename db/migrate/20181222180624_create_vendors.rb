class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :address_st
      t.string :city
      t.integer :zipcode
      t.string :phone
      t.boolean :has_min
      t.float :min_amount

      t.timestamps
    end
  end
end
