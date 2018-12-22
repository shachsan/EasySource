class CreateVendorProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_products do |t|
      t.string :v_item
      t.float :case_price
      t.integer :inventory
      t.references :product, foreign_key: true
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
