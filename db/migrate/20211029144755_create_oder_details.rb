class CreateOderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :oder_details do |t|
      t.integer :order_id, null: false
      t.integer :item_id, null: false
      t.integer :tax_price, null: false
      t.integer :amount, null: false
      t.integer :make_status, null: false, default: 0
      
      t.timestamps
    end
  end
end
