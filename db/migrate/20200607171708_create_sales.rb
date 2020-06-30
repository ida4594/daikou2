class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :shop_id
      t.integer :rate
      t.timestamps
    end
  end
end
