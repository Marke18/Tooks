class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.belongs_to :order, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.integer :quantita
      t.float :prezzo

      t.timestamps
    end
  end
end
