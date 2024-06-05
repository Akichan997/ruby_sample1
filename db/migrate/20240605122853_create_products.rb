class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_value
      t.integer :currency_id
      t.datetime :created
      t.datetime :updated

      t.timestamps
    end
  end
end
