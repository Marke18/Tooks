class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :data
      t.belongs_to :utent, foreign_key: true

      t.timestamps
    end
  end
end
