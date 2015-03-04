class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.text :notes

      t.timestamps
    end
  end
end
