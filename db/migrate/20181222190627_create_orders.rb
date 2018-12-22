class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :delivery_date
      t.references :buyer, foreign_key: true
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
