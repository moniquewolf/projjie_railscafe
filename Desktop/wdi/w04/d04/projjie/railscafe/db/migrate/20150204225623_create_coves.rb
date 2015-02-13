class CreateCoves < ActiveRecord::Migration
  def change
    create_table :coves do |t|
      t.string :type
      t.float :price
      t.integer :quantity
      t.string :roast
      t.date :expiration_date
      t.string :brew

      t.timestamps
    end
  end
end
