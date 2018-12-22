class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :barcode
      t.string :name
      t.string :size
      t.integer :case_pack
      t.date :exp_date
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
