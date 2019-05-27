class AddOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :order do |t|
      t.integer :pizza_id
      t.integer :customer_id
    end
  end
end
