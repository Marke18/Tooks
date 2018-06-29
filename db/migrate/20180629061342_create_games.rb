class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :nome
      t.text :descr
      t.string :img1
      t.string :img2
      t.string :img3
      t.belongs_to :category, foreign_key: true
      t.float :prezzo

      t.timestamps
    end
  end
end
