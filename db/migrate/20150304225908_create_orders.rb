class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_address
      t.string :restaurant_name
      t.string :restaurant_address
      t.string :status
      t.string :driver_name
      t.text :order_details
      t.integer :total_before_fee
      t.integer :total_after_fee
      t.boolean :complete

      t.timestamps
    end
  end
end
