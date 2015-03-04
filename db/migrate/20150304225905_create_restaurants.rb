class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.string :website
      t.text :notes

      t.timestamps
    end
  end
end
