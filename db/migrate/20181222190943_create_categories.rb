class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :main_cat
      t.string :sub_cat

      t.timestamps
    end
  end
end
