class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :nome_cat
      t.text :descr
      t.string :img1

      t.timestamps
    end
  end
end
