class FarmsProductsTable < ActiveRecord::Migration
  def change
    create_table :farms_products do |t|
      t.integer :farm_id
      t.integer :product_id

      t.timestamps null: false
    end

    add_index :farms_products, :farm_id
    add_index :farms_products, :product_id
  end
end
