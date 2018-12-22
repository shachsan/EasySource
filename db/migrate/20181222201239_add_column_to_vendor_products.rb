class AddColumnToVendorProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :vendor_products, :exp_date, :date
  end
end
