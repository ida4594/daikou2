class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops, primary_key: [:shop_id] do |t|
      t.string      :shop_id
      t.string      :name
      t.integer     :rate
      t.timestamps null: true
    end
  end
end

