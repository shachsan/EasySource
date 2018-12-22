class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :account_num
      t.references :buyer, foreign_key: true
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
