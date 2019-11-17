class CreateLamas < ActiveRecord::Migration[5.2]
  def change
    create_table :lamas do |t|
      t.string :title
      t.text :description
      t.float :price
      t.boolean :is_available
      t.integer :capacity
      t.boolean :driver
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
