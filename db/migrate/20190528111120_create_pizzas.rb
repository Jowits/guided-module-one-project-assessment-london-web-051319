class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    drop_table :pizzas
    
    create_table :pizzas do |t|
      t.string :name
      t.float :price
    end
  end
end
