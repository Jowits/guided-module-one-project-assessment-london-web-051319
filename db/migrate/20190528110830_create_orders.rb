class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :order
    
    create_table :orders do |t|
      t.integer :pizza_id
      t.integer :customer_id
    end
  end
end
